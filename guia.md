# Karate API Testing Project

Este proyecto está diseñado para realizar pruebas de API utilizando el framework Karate en un entorno basado en Gradle y Java. Proporciona una configuración básica para escribir y ejecutar pruebas automatizadas de API, con soporte para escenarios y validaciones detalladas.

---

## Estructura del Proyecto

El proyecto tiene la siguiente estructura:

```
karate-api-testing/
├── src/
│   ├── main/
│   │   └── java/                             # (Vacío, no se utiliza en este proyecto)
│   └── test/
│       ├── java/
│       │   └── examples/
│       │       └── ApiTest.java              # Clase de prueba que ejecuta los archivos .feature
│       └── resources/
│           └── examples/
│               └── api-test.feature          # Archivo .feature con escenarios de prueba
├── build.gradle                              # Configuración de Gradle y dependencias
├── settings.gradle                           # Configuración del proyecto Gradle
├── guia.md                                   # Guía del proyecto con ejercicios y explicaciones
├── .github/
│   └── custom_instructions.md                # Instrucciones personalizadas para GitHub Copilot
├── gradlew                                   # Script para ejecutar Gradle en sistemas Unix/Linux
├── gradlew.bat                               # Script para ejecutar Gradle en Windows
└── build/                                    # Carpeta generada automáticamente por Gradle
    └── reports/
        └── karate-reports/                   # Reportes generados por Karate
```



### Descripción de la funcionalidad

1. **`ApiTest.java`**: Este archivo contiene la clase de prueba que ejecuta los escenarios definidos en el archivo `.feature`. Utiliza la anotación `@Karate.Test` para ejecutar los tests.
2. **`api-test.feature`**: Define los escenarios de prueba en lenguaje Gherkin. Por ejemplo, un escenario básico para verificar un endpoint GET.
3. **`build.gradle`**: Configura las dependencias del proyecto, incluyendo Karate.
4. **`.github/custom_instructions.md`**: Archivo para personalizar instrucciones y guías relacionadas con el uso de GitHub Copilot.

---

## Guía para Crear un Archivo `.md` de Custom Instructions

Para agregar un archivo de instrucciones personalizadas en la carpeta `.github`, sigue estos pasos:

1. **Crear la carpeta `.github`**:
   Si no existe, crea una carpeta llamada `.github` en la raíz del proyecto.

2. **Crear el archivo `custom_instructions.md`**:
   Dentro de la carpeta `.github`, crea un archivo llamado `custom_instructions.md`.

3. **Contenido del archivo**:
   Agrega contenido como el siguiente ejemplo:

   ```md
   # Custom Instructions for GitHub Copilot

   Este archivo proporciona instrucciones personalizadas para usar GitHub Copilot en este proyecto.

   ## Sugerencias para Mejorar los Tests

   - Usa Copilot para generar nuevos escenarios en los archivos `.feature`.
   - Solicita sugerencias para validar respuestas JSON más complejas.
   - Pide ayuda para refactorizar el código de las pruebas en `ApiTest.java`.

   ## Ejemplo de Uso

   1. Abre el archivo `api-test.feature`.
   2. Escribe un comentario describiendo el escenario que deseas agregar.
   3. Usa Copilot para autocompletar el escenario.
   4. Guardar y confirmar cambios: Guarda el archivo y realiza un commit para agregarlo al repositorio.


## Ejercicios para Mejorar los Tests con GitHub Copilot

### Ejercicio 1: Agregar un Escenario para Validar un Endpoint POST
Paso a Paso:

1. Abre el archivo api-test.feature.
2. Escribe un comentario como este:

```gherkin
# Escenario: Crear un nuevo recurso en el endpoint POST
```
3. Usa GitHub Copilot para autocompletar el escenario. Por ejemplo:


```gherkin
Scenario: Crear un nuevo recurso
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And request { title: 'foo', body: 'bar', userId: 1 }
    When method post
    Then status 201
    And match response.id == '#number'
```
4. Guarda el archivo y ejecuta los tests con:

```cmd
./gradlew test
```
Resultado esperado: El test debería pasar y validar que el recurso se creó correctamente.

## Ejercicio 2: Validar Respuestas JSON Complejas
Paso a Paso:

1. Abre el archivo api-test.feature.
2. Escribe un comentario como este:

```gherkin
# Escenario: Validar una respuesta JSON con múltiples campos
```
3. Usa GitHub Copilot para generar un escenario que valide una respuesta JSON compleja. Por ejemplo:

```gherkin
Scenario: Validar respuesta JSON
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    When method get
    Then status 200
    And match response contains { id: 1, title: '#string', body: '#string', userId: '#number' }
```
4. Guarda el archivo y ejecuta los tests.

Resultado esperado: El test debería pasar y validar que la respuesta contiene los campos esperados.


## Ejercicio 3: Refactorizar ApiTest.java con GitHub Copilot

1. Abre el archivo ApiTest.java.
2. Escribe un comentario como este:

```gherkin
// Refactorizar para ejecutar múltiples archivos .feature
```
3. Usa GitHub Copilot para sugerir un método que ejecute múltiples archivos .feature. Por ejemplo:

```java
@Karate.Test
Karate testAll() {
    return Karate.run("api-test", "github").relativeTo(getClass());
}
```
4. Guarda el archivo y ejecuta los tests.

Resultado esperado: El archivo ApiTest.java debería ser capaz de ejecutar múltiples archivos .feature.
