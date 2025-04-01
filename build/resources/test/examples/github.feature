Feature: GitHub API Testing

  Background:
    * url 'https://api.github.com'

  Scenario: Get information about Octocat
    Given path '/users/octocat'
    When method get
    Then status 200
    And match response.login == 'octocat'

  Scenario: List repositories of a user
    Given path '/users/octocat/repos'
    When method get
    Then status 200
    And match response contains { name: '#string', private: '#boolean' }

  Scenario: Create an issue in a repository (requires authentication)
    Given path '/repos/octocat/Spoon-Knife/issues'
    And header Authorization = 'Bearer ' + token
    And request { title: 'Test Issue', body: 'This is a test issue created by Karate.' }
    When method post
    Then status 201
    And match response.title == 'Test Issue'

  Scenario: List issues in a repository
    Given path '/repos/octocat/Spoon-Knife/issues'
    When method get
    Then status 200
    And match response[0] contains { title: '#string', state: '#string' }
