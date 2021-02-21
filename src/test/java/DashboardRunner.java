import io.cucumber.junit.Cucumber;
import org.junit.runner.RunWith;
import io.cucumber.junit.CucumberOptions;




@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/main/resources/features/dashboard.feature",
        glue = {"steps"},
        // tags="@test1 or test2"
        tags="@test6"
)
public class DashboardRunner {
// @Given ("I navigate to Interview Prep")

}
