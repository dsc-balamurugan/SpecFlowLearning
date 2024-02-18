using TechTalk.SpecFlow;

namespace SpecFlowTutorial.Steps.StepArguments.DataTable
{
    [Binding]
    public class StepArgumentDocStringStepDefinitions
    {

        // doc string is the last argument if the step has more than one parameter
        [Then(@"User fill the mail ""([^""]*)"" as below")]
        public void ThenUserFillTheMailAsBelow(string field, string multilineText)
        {
            Console.WriteLine("Doc String Arugment");
            Console.WriteLine("field variable : "+field);                       //output : mail
            Console.WriteLine("DocString : "+multilineText);         //output : doc string
            // to do's
        }

        [Given(@"User navigate to the Gmail application")]
        public void GivenUserNagivateToTheGmailApplication()
        {
            // to do's
        }
        [When(@"User compose a new mail")]
        public void WhenUserComposeANewMail()
        {
            // to do's
        }

        [Then(@"User enters the to mail add subject and click send")]
        public void ThenUserEntersTheToMailAddSubjectAndClickSend()
        {
            // to do's
        }
    }
}
