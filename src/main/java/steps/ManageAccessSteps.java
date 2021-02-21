package steps;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import java.sql.SQLOutput;
import java.util.List;
import java.util.Map;
public class ManageAccessSteps {
    @And("I click {string} link")
    public void iClickLink(String arg0) {
    }
    @Then("I validate the following {string} fields")
    public void iValidateTheFollowingFields(String fieldName, List<String> list) {
        System.out.println("Field name: " +fieldName);
        for(String each : list){
            System.out.println(each);
        }
    }
    @Then("I validate the following options are displayed in {string} dropdown")
    public void iValidateTheFollowingOptionsAreDisplayedInDropdown(String fieldName, List<String> list) {
        System.out.println("Field name: " +fieldName);
        for(String each : list){
            System.out.println(each);
        }
    }
    @Then("I enter the following values in the following fields")
    public void iEnterTheFollowingValuesInTheFollowingFields(Map<String, String> map) {
        for(String each : map.keySet()){
            System.out.println("key: " +each);
            System.out.println("value: " + map.get(each));
        }
        //System.out.println(map.get("Email"));
    }
    @Then("I pick the key of {string}")
    public void iPickTheKeyOf(String value, Map<String, String> map) {
        for (Map.Entry eachEntry : map.entrySet()) {
            if (eachEntry.getValue().equals(value)) {
                System.out.println(eachEntry.getKey());
            }
        }
    }
    @Then("verify the following user exists in the table")
    public void verify_the_following_user_exists_in_the_table(Map<String, String> map) {
    }
    @Then("I edit the user with following")
    public void i_edit_the_user_with_following(Map<String, String> map) {
    }
}