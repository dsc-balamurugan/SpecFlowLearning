using TechTalk.SpecFlow;

namespace SpecFlowTutorial.ScenarioOutline
{
    [Binding]
    public class ScenarioOutlineStepDefinitions
    {
        [Given(@"User navigate to the application")]
        public void GivenUserNavigateToTheApplication()
        {
            // TO DO'S
        }
        // PARAMETERS PASSED STEP
        /*
         * number of <> parameter passed should be equal to the number of parameter in method definition
         * we can declare the type of the parameter in method definition (if we are passing numbers in example we can use int type)
         * (.*) is a regex exp -here it indicates we can pass anything
         * 
         * In Feature: When User enter login credentials as username <user> and password <pass>
         * In StepDef: [When(@"User enter login credentials as username (.*) and password (.*)")]
         * 
         * Note: by default  the StepDef will define as : [When(@"User enter login credentials as username user(.*) and password pass(.*)")],
         * delete the word enclosed in <> in step def.
         */
        [When(@"User enter login credentials as username (.*) and password (.*)")]
        public void WhenUserEnterLoginCredentialsAsUsernameUserAndPasswordPass(string username, string password)
        {
            Console.WriteLine("User Name : " + username);
            Console.WriteLine("Password : " + password);
            // TO DO'S
        }

        [Then(@"User can able to login")]
        public void ThenUserCanAbleToLogin()
        {
            // TO DO'S
        }
    }
}
