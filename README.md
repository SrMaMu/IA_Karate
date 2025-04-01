# Karate API Testing Project

This project is designed to demonstrate API testing using the Karate framework in a Gradle-based Java environment. Below are the instructions for setting up and using the project.

## Project Structure

```
karate-api-testing
├── src
│   ├── main
│   │   └── java
│   └── test
│       ├── java
│       │   └── examples
│       │       └── ApiTest.java
│       └── resources
│           └── examples
│               └── api-test.feature
├── build.gradle
├── settings.gradle
└── README.md
```

## Step-by-Step Setup

1. **Create Project Directory**: Create a new directory named `karate-api-testing`.

2. **Create Directory Structure**: Inside the project directory, create the following structure:
   - `src/main/java`
   - `src/test/java/examples`
   - `src/test/resources/examples`

3. **Create `build.gradle` File**: In the root of the project, create a `build.gradle` file with the following content:
   ```groovy
   plugins {
       id 'java'
   }

   repositories {
       mavenCentral()
   }

   dependencies {
       testImplementation 'com.intuit.karate:karate-junit5:1.0.1'
   }

   test {
       useJUnitPlatform()
   }
   ```

4. **Create `settings.gradle` File**: In the root of the project, create a `settings.gradle` file with the following content:
   ```groovy
   rootProject.name = 'karate-api-testing'
   ```

5. **Create `ApiTest.java` File**: In `src/test/java/examples`, create a file named `ApiTest.java` with the following content:
   ```java
   import com.intuit.karate.junit5.Karate;

   class ApiTest {
       @Karate.Test
       Karate testAll() {
           return Karate.run("api-test").relativeTo(getClass());
       }
   }
   ```

6. **Create `api-test.feature` File**: In `src/test/resources/examples`, create a file named `api-test.feature` with the following content:
   ```gherkin
   Feature: API Testing with Karate

   Scenario: Test API endpoint
       Given url 'https://api.example.com'
       When method get
       Then status 200
   ```

7. **Build and Run Tests**: Open a terminal in the project directory and run the following command to build the project and execute the tests:
   ```
   ./gradlew test
   ```

## Usage

After setting up the project, you can modify the `api-test.feature` file to add more scenarios for testing different API endpoints. To run the tests, simply execute the Gradle command mentioned above.

## Conclusion

This project provides a basic setup for API testing using the Karate framework. You can expand upon this foundation by adding more tests and enhancing the existing ones as needed.