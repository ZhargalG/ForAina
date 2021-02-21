import io.cucumber.junit.Cucumber;
import org.junit.runner.RunWith;
import io.cucumber.junit.CucumberOptions;




@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"pretty", "html:target/LoginRunner"},
        features = "src/main/resources/features/login.feature",
        glue = {"steps"}
        , tags="@testLogin"
        //tags="@test1 or test2"
       // tags="@test1 or @test2"
        , stepNotifications = true
        , dryRun = false
)
public class LoginRunner {

}
// search files (java, feature, runner) double shift  (tap shift key twice)
//search word in file (cmd+F or ctrl+F)
//search word globally (cmd+shift+F or ctrl+shift+F)
//replace word in file (cmd+R or ctrl+R)
//replace word globally (cmd+shift+R or ctrl+shift+R)