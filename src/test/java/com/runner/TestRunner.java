package com.runner;

import io.cucumber.junit.CucumberOptions;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(
        glue = {"src.test.java.com.steps.WaarkoopSteps"},
        plugin = {"pretty"},
        features = "src/test/resources/features/refactor"
)
public class TestRunner {}
