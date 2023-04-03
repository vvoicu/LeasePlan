package starter.stepdefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.restassured.response.Response;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import org.hamcrest.Matchers;

import java.util.logging.Logger;

import static net.serenitybdd.rest.SerenityRest.restAssuredThat;
import static org.hamcrest.Matchers.contains;

public class SearchStepDefinitions {

    @Steps
    public ApiConnector apiConnector;

    private Response response;
    Logger logger = Logger.getLogger(getClass().getSimpleName());

    // BDD -is Given When Then structure. tests should start with Given not with When
    @Given("he calls url {string}")
    public void heCalls(String url) {
        response = apiConnector.getRequest(url);
    }

   @When("he calls endpoint {string}")
    public void heCallsEndpoint(String url) {
        response = apiConnector.getRequest(url);
    }

    // name is suggestive to what it checks
    @When("200 Status Code")
    public void then200StatusCode() {
        logger.info("Status Code 200");
        SerenityRest.restAssuredThat(response -> response.statusCode(200));
    }
    //name is not suggestive to what it checks
    @Then("he sees the results displayed for apple")
    public void heSeesTheResultsDisplayedForApple() {
        restAssuredThat(response -> response.statusCode(200));
    }

    //old usage
    @Then("he sees the results displayed for mango")
    public void heSeesTheResultsDisplayedForMango() {
        restAssuredThat(response -> response.body("title", contains("mango")));
    }
    //new usage
    @Then("see the results displayed for {string}")
    public void see_the_results_displayed_for(String expectedTerm) {
        logger.info("Expected term: " + expectedTerm);
        SerenityRest.restAssuredThat(response -> response.body("title", Matchers.contains(expectedTerm)));
    }

    @Then("he does not see the results")
    public void he_Doesn_Not_See_The_Results() {
        restAssuredThat(response -> response.body("error", contains("True")));
    }
}
