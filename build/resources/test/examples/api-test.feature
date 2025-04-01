Feature: API Testing with Karate

Scenario: Test API endpoint
    Given url 'https://jsonplaceholder.typicode.com/posts'
    When method get
    Then status 200