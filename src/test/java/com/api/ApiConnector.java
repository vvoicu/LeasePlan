package com.api;

import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import net.serenitybdd.rest.SerenityRest;

import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;

public class ApiConnector {


    Logger logger = Logger.getLogger(getClass().getSimpleName());


    public Response getRequest(String url, Map<String, String> headers) {



        logger.info("-------------------- Http Put Request --------------------");
        logger.info("URL: " + url);
        logger.info("Headers: " + headers);

        RequestSpecification requestSpecification = SerenityRest.given().headers(headers).baseUri(url);
        Response response = requestSpecification.get();

        logger.info("-------------------- Http Post Response --------------------");
        logger.info("Status Code: " + response.statusCode());
        logger.info("Body: " + response.getBody().prettyPrint());

        return response;
    }

    public Map<String, String> basicHeaders(){
        Map<String, String> headers = new HashMap<String, String>();
        headers.put("Accept-Encoding","gzip, deflate, br");
        headers.put("Accept-Language","en,en-US;q=0.9,ro;q=0.8");
        headers.put("Accept","text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7");
        return headers;
    }
}
