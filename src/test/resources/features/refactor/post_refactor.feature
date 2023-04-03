Feature: Search for the product

### Please use endpoint GET https://waarkoop-server.herokuapp.com/api/v1/search/demo/{product} for getting the products.
### Available products: "orange", "apple", "pasta", "cola"
### Prepare Positive and negative scenarios

  ###Orange URL
  Scenario:
    When he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/orange"
    Then 200 Status Code
    Then see the results displayed for "Sisi Sinas 0% Suiker Fles 1,5 L"

  Scenario:
    When he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/orange"
    Then see the results displayed for "apple"

  Scenario:
    When he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/orange"
    Then 200 Status Code
    Then see the results displayed for "pasta"

  Scenario:
    When he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/orange"
    Then 200 Status Code
    Then see the results displayed for "cola"

  ###apple URL
  Scenario:
    When he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/apple"
    Then 200 Status Code
    Then see the results displayed for "orange"

  Scenario:
    When he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/apple"
    Then 200 Status Code
    Then see the results displayed for "Organix Apple rice cake clouds"

  Scenario:
    When he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/apple"
    Then 200 Status Code
    Then see the results displayed for "pasta"

  Scenario:
    When he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/apple"
    Then 200 Status Code
    Then see the results displayed for "cola"

  ###pasta URL
  Scenario:
    When he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/pasta"
    Then 200 Status Code
    Then see the results displayed for "orange"

  Scenario:
    When he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/pasta"
    Then 200 Status Code
    Then see the results displayed for "AH Biologisch Tagliatelle  volkoren"

  Scenario:
    When he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/pasta"
    Then 200 Status Code
    Then see the results displayed for "pasta"

  Scenario:
    When he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/pasta"
    Then 200 Status Code
    Then see the results displayed for "cola"

  ###cola URL
  Scenario:
    When he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/cola"
    Then 200 Status Code
    Then see the results displayed for "orange"

  Scenario:
    When he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/cola"
    Then 200 Status Code
    Then see the results displayed for "apple"

  Scenario:
    When he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/cola"
    Then 200 Status Code
    Then see the results displayed for "pasta"

  Scenario:
    When he calls url "https://waarkoop-server.herokuapp.com/api/v1/search/demo/cola"
    Then 200 Status Code
    Then see the results displayed for "Pepsi"


