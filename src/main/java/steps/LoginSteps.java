package steps;
import impls.LoginImpl;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
public class LoginSteps {
    @Then("I enter {string} in the Email input box")
    public void iEnterInTheEmailInputBox(String email) {
        System.out.println("Entering email: " +email);
    }
    @Then("I should see the login page")
    public void iShouldSeeTheLoginPage() {
        System.out.println("Validating the login page");
    }
    @Given("I navigate to Interview Prep")
    public void iNavigateToInterviewPrep() {
        LoginImpl impl = new LoginImpl();
        impl.navigateToPage();
    }
    @And("I enter {string} in the Password input box")
    public void iEnterInThePasswordInputBox(String password) {
        System.out.println("Entering password: " +password);
    }
    @And("I click {string} button")
    public void iClickButton(String buttonName) {
        System.out.println("Clicking button: " +buttonName);
    }
    @Then("I should see a {string} error message")
    public void iShouldSeeAErrorMessage(String errorMsg) {
        System.out.println("Validating error messagge: " +errorMsg);
    }
    //-----
    @Then("I validate I am on {string} page")
    public void iValidateIAmOnPage(String pageName) {
        System.out.println("Validating the page: " +pageName);
    }
    @Given("I {string} numbers {string} {string}")
    public void iNumbers(String operation, String num1, String num2) {
        if(operation.equals("add")){
            System.out.println("We are adding numbers: " +num1 + " and " + num2);
        }else if(operation.equals("divide")){
            System.out.println("We are dividing " + num2 + " by " + num1);
        }
    }

    @Then("I enter {string} in the email input")
    public void iEnterInTheEmailInput(String email) {
        System.out.println("I enter"+email);
    }

    @Then("I enter {string} in the password input")
    public void iEnterInThePasswordInput(String password) {
        System.out.println("I enter"+password);
    }

    @Then("I validate that this page equals to {string}")
    public void iValidateThatThisPageEqualsTo(String icon) {
        System.out.println("this page is equal to " + icon);
    }

    @Then("I enter {string} in the firstname input")
    public void iEnterInTheFirstnameInput(String firstname) {
    }

    @Then("I enter {string} in the lastname input")
    public void iEnterInTheLastnameInput(String lastname) {
    }

    @Then("I enter {string} in the role input")
    public void iEnterInTheRoleInput(String role) {
    }


    @Then("I enter {string} in the batch input")
    public void iEnterInTheBatchInput(String batch) {
    }
    @Then("I should see the {string} page")
    public void iShouldSeeThePage(String pageName) {
        LoginImpl impl = new LoginImpl();
        impl.validateCurrentPage(pageName);
    }
}