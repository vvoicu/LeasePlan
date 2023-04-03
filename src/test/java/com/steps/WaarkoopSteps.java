package com.steps;

import com.api.ApiConnector;
import io.cucumber.java.en.When;
import io.restassured.response.Response;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Steps;
import starter.stepdefinitions.CarsAPI;

public class WaarkoopSteps {


    @Steps
    public ApiConnector apiConnector;

    @When("he calls url {string}")
    public void heCallsEndpoint(String url) {
        Response response = apiConnector.getRequest(url, apiConnector.basicHeaders());
    }

}
