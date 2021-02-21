package steps;
import io.cucumber.java.en.Then;
import java.util.List;
public class DashboardSteps {
    @Then("I validate the following icons on the dashboard")
    public void iValidateTheFollowingIconsOnTheDashboard(List<String> iconList) {
        for(int i=0; i<iconList.size(); i++){
            System.out.println(i+1 + ". " + iconList.get(i));
        }
    }
}