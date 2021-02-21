package impls;
import pages.LoginPage;
import utils.CucumberLogUtils;
import utils.LocalConfigUtils;
import utils.WebdriverUtils;
public class LoginImpl {
    private LoginPage loginPage;
    private LoginPage getPage(){
        if(loginPage == null){
            loginPage = new LoginPage(WebdriverUtils.getWebDriver());
        }
        return loginPage;
    }
    public void navigateToPage() {
        String url = LocalConfigUtils.getProperty("url");
        WebdriverUtils.getWebDriver().get(url);
        CucumberLogUtils.logPass("Successfully navigated to the url", false);
    }
    public void validateCurrentPage(String pageName) {
        boolean pageIsDisplayed = false;
        switch (pageName.toLowerCase()){
            case "login" :
                pageIsDisplayed = getPage().emailInputBox.isDisplayed();
                break;
        }
        if(pageIsDisplayed) {
            CucumberLogUtils.logPass( pageName + " page is displayed", true);
        }else{
            CucumberLogUtils.logFail(pageName + " page is NOT displayed", true);
        }
    }
    public void enterInInputBox(String value, String inputBoxName) {
        switch (inputBoxName.toLowerCase()){
            case "email":
                getPage().emailInputBox.sendKeys(value);
                break;
        }
        CucumberLogUtils.logPass(value  + " was entered in " + inputBoxName + " input box successfully", true);
    }
}