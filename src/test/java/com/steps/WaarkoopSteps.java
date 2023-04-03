package com.steps;

import com.api.ApiConnector;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.restassured.response.Response;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import org.hamcrest.Matchers;

import java.util.logging.Logger;

public class WaarkoopSteps {
    private  Response response;
    Logger logger = Logger.getLogger(getClass().getSimpleName());
    @Steps
    public ApiConnector apiConnector;

    @When("he calls url {string}")
    public void heCallsEndpoint(String url) {
        response = apiConnector.getRequest(url);
//        response = apiConnector.getRequest(url, apiConnector.basicHeaders());
//        Response response = apiConnector.getRequest(url, apiConnector.basicHeaders());
    }


    @Then("200 Status Code")
    public void then200StatusCode() {
        logger.info("Status Code 200");
        SerenityRest.restAssuredThat(response -> response.statusCode(200));
    }

    @Then("see the results displayed for {string}")
    public void see_the_results_displayed_for(String expectedTerm) {

        logger.info("Expected term: " + expectedTerm);
        SerenityRest.restAssuredThat(response -> response.body("title", Matchers.contains(expectedTerm)));
    }
}