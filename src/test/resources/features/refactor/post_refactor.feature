Feature: Search for the product

### Please use endpoint GET https://waarkoop-server.herokuapp.com/api/v1/search/demo/{product} for getting the products.
### Available products: "orange", "apple", "pasta", "cola"
### Prepare Positive and negative scenarios

  ###Orange URL
  Scenario: Orange Url verify Sisi
    Given he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/orange"
    Then 200 Status Code
    Then see the results displayed for "Sisi No Bubbles Orange"

  Scenario: Orange Url verify apple
    When he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/orange"
    Then see the results displayed for "apple"

  Scenario: Orange Url verify pasta
    Given he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/orange"
    Then 200 Status Code
    Then see the results displayed for "pasta"

  Scenario: Orange Url verify cola
    Given he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/orange"
    Then 200 Status Code
    Then see the results displayed for "cola"

  ###apple URL
  Scenario: Apple Url verify orange
    Given he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/apple"
    Then 200 Status Code
    Then see the results displayed for "orange"

  Scenario: Apple Url verify Organix
    Given he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/apple"
    Then 200 Status Code
    Then see the results displayed for "Organix Apple rice cake clouds"

  Scenario: Apple Url verify pasta
    Given he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/apple"
    Then 200 Status Code
    Then see the results displayed for "pasta"

  Scenario:  Apple Url verify cola
    Given he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/apple"
    Then 200 Status Code
    Then see the results displayed for "cola"

  ###pasta URL
  Scenario: Pasta Url verify orange
    Given he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/pasta"
    Then 200 Status Code
    Then see the results displayed for "orange"

  Scenario: Pasta Url verify AH Bio
    Given he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/pasta"
    Then 200 Status Code
    Then see the results displayed for "AH Biologisch Tagliatelle  volkoren"

  Scenario: Pasta Url verify pasta
    Given he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/pasta"
    Then 200 Status Code
    Then see the results displayed for "pasta"

  Scenario: Pasta Url verify cola
    Given he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/pasta"
    Then 200 Status Code
    Then see the results displayed for "cola"

  ###cola URL
  Scenario: Cola Url verify orange
    Given he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/cola"
    Then 200 Status Code
    Then see the results displayed for "orange"

  Scenario: Cola Url verify apple
    Given he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/cola"
    Then 200 Status Code
    Then see the results displayed for "apple"

  Scenario: Cola Url verify pasta
    Given he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/cola"
    Then 200 Status Code
    Then see the results displayed for "pasta"

  Scenario: Cola Url verify Pepsi
    Given he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/cola"
    Then 200 Status Code
    Then see the results displayed for "Pepsi"


