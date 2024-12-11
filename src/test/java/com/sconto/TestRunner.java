package com.sconto;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(features = "src/test/resources/features",
    glue = "com/sconto/stepDefinitions",
    tags = "@wrongEmail",
    plugin = {"pretty","json:build/cucumber-report.json"})
//    plugin = {"pretty","json:build/cucumber-report/cucumber.json"})
public class TestRunner {
}
