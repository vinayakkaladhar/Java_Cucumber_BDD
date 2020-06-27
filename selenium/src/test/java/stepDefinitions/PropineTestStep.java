package stepDefinitions;

import POM.LoginPage;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.testng.Assert;

public class PropineTestStep extends  LoginPage {
    public LoginPage login;

    @Given("^Am using the website (.*)$")
    public void am_using_the_website(String website) throws InterruptedException {
        login = new LoginPage();
        login.Login(website);
    }

    @When("^I enter (.*) on the input field and click 'Submit'$")
    public void i_enter_date_and_submit(String date) throws InterruptedException {
        login = new LoginPage();
        login.enterInput(date);
    }

    @Then("^I should see a date '(.*)' on the form$")
    public void i_should_see_a_date(String date) throws InterruptedException {
        login = new LoginPage();
        String dateOnScreen = login.verifyDate();
        Assert.assertEquals(dateOnScreen,date);
    }

    @Then("^I close the browser$")
    public void i_close_the_browser() throws InterruptedException {
driver.close();
    }
}
