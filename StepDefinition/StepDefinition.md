# Step Definition

Step definition provides the connecting between feature file and the execution codes.

Each step in a feature file should have individual step definition

These step definitions should be contained in a class which has [Binding] attribute in class level

Step definitions are the method with step definition attribute.

    Step Definition Attributes,

    [Given(expression)]
    [When(expression)]
    [Then(expression)]

Note : expression can be reg expression or cucumber expression

    Step in Feature file=>

        Given User navigate to the Gmail application

    Step Definition in class=>

        [Given(@"User navigate to the Gmail application")]
        public void GivenUserNagivateToTheGmailApplication()
        {
            // to do's
        }

## Multiple Step Attribute

We can use multiple Step Definition attribute for a single method. Mutliple Step attribute can be used, when different steps are meant to do same functionality.

    [Given(@"User navigate to the Gmail application")]
    [Given(@"User navigate to the google mail application")]
    public void GivenUserNagivateToTheGmailApplication()
    {
        // to do's
    }

## [Obsolete] attribute

Obsolete attribute from C# System class can be used to mark the step definition as obsolete or depreciated.

    [Obsolete("reason for depreciation")]
    [Given(@"User navigate to the google mail application")]
    public void GivenUserNagivateToTheGmailApplication()
    {
        // to do's
    }

In Output:

    Standard Output: 
    Given User navigate to the Gmail application
    -> warning: The step GivenUserNagivateToTheGmailApplication is obsolete because "reason for depreciation"
