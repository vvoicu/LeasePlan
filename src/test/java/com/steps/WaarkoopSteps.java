package com.steps;

import com.api.ApiConnector;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.restassured.response.Response;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import org.junit.Assert;
import starter.stepdefinitions.CarsAPI;

import static net.serenitybdd.rest.SerenityRest.restAssuredThat;

public class WaarkoopSteps {
    private  Response response;

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
        restAssuredThat(response -> response.statusCode(200));
    }

    @Then("see the results displayed for {string}")
    public void see_the_results_displayed_for(String expectedTerm) {
        restAssuredThat(response -> response.body().contains(expectedTerm));
//        Assert.assertTrue("Term Expected: " + expectedTerm + " -- Actual response: " + response.prettyPrint(), response.getBody().toString().contains(expectedTerm));
    }


}
