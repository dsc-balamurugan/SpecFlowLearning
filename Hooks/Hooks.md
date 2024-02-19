# Hooks

Hooks are block of code runs at various point in execution.

The class contains any hooks attribute should contain [Binding] attribute (same as step definition)

For Example: In Selenium, we need to launch driver before each testcase(here scenario), for that purpose we can use [BeforeScenario] Hook attribute

|HOOKS HIERARCHY
|:----------------:
|`[BeforeTestRun]`
|`[BeforeFeature]`
|`[BeforeScenario]`
|`[BeforeScenarioBlock]`
|`[BeforeStep]`
|`[AfterStep]`
|`[AfterScenarioBlock]`
|`[AfterScenario]`
|`[AfterFeature]`
|`[AfterTestRun]`

## Exceptions In Hook Execution

If an exeception thrown at top level before hooks, the upcoming lower level before hooks and lower level after hooks won't execute.

Example:
When a program contains [BeforeFeature], [BeforeScenario], [BeforeStep] and [AfterStep], [AfterScenario], [AfterFeature] and the error occured at [BeforeScenario], then the upcoming lower level before hook and lower level after hook won't execute. But the [AfterScenario] and [AfterFeature] will execute.

i. ***Error occured at `[BeforeScenario]`***

`[BeforeFeature]` - executed

`[BeforeScenario]` - **error occured here !!**

`[BeforeStep]` - won't execute & marked as skipped

`[AfterStep]` - won't execute & marked as skipped

`[AfterScenario]` - will execute

`[AfterFeature]` - will execute

ii. ***If error occured at `[BeforeFeature]`***

`[BeforeFeature]` - **error occured here !!**

`[BeforeScenario]` - won't execute & marked as skipped

`[BeforeStep]` - won't execute & marked as skipped

`[AfterStep]` - won't execute & marked as skipped

`[AfterScenario]` - won't execute & marked as skipped

`[AfterFeature]` - will execute

## 1. Feature level Hooks

`[BeforeFeature]`

BeforeFeature attribute is used run the logics before each feature execution.

`[AfterFeature]`

AfterFeature attribute is used run the logics after each feature execution.

```C#
    [BeforeFeature]
    public static void BeforeFeature()
    {
        Console.WriteLine("Before Feature Hook execution started");
        //codes to execute before feature
    }

    [AfterFeature]
    public static void AfterFeature()
    {
        Console.WriteLine("After Feature Hook execution started");
        //codes to execute after feature
    }
```

Important: The method marked with ***[BeforeFeature]*** and ***[AfterFeature]*** attributes should be **static**.

## 2. Scenario level Hooks

`[BeforeScenario]` or `[Before]`

BeforeScenario or Before attribute is used to run logics before each scenario or scenario outline example execution.

`[AfterScenario]` or `[After]`
AfterScenario or After attribute is used to run logics after each scenario or scenario outline example execution.

```C#
    [BeforeScenario]
    public void AfterScenario()
    {
        Console.WriteLine("Before Scenario Hook execution started");
        //codes to execute before scenario
    }

    [AfterScenario]
    public void AfterScenario()
    {
        Console.WriteLine("After Scenario Hook execution started");
        //codes to execute after scenario
    }
```

## 3. Step level Hooks

`[BeforeStep]`
Used to run logic before each step

`[AfterStep]`
Used to run logic after each step

```C#
    [BeforeStep]
    public void BeforeStep()
    {
        Console.WriteLine("Before step Hook execution started");
        //codes to execute before each step
    }

    [AfterStep]
    public void AfterStep()
    {
        Console.WriteLine("After step Hook execution started");
        //codes to execute after each step
    }
```

## 4. Senario Block Hooks

A scenario block is nothing but steps with similar step attribute in sequence

    Scenario: Search functionality
        Given User launch the browser
        Given User navigate to the application
        When User enter login credentials as username ABZ and password xyz
        Then User can see homepage
        Then User can search in search box

In the above scenario,

* the first two **Given** lines are one scenario block

* the **When** line is one scenario block

* the last two **Then** lines are one scenario block

        Then User can see homepage
        And User can search in search box

The above two lines are considered as single scenario block, because **And** is consider as **Then**.

Note: **And** and **But** are considered as **Then** by specflow and can be interchangable in a feature .

`[BeforeScenarioBlock]`

Used to run logic before a scenario block

`[AfterScenarioBlock]`

Used to run logic after a scenario block

## 5. Test Run Hooks

`[BeforeTestRun]`

Used to run logics before entire test run.

`[AfterTestRun]`

Used to run logics after entire test run.

```C#
    [BeforeTestRun]
    public static void BeforeTestRun()
    {
        //Setup codes
    }

    [AfterTestRun]
    public static void AfterTestRun()
    {
        //teardown codes
    }
```

Important: The method marked with ***[BeforeTestRun]*** and ***[AfterTestRun]*** attributes should be **static**.

## Order Property

If the program has more than one hook of same type, it execute in random order.

We can use `Order` property to define the order of its execution.

Order of execution will be from lower value to higher value.

```C#
    [BeforeScenario(order = 0)]
    public void BeforeScenarioBrowserLaunch(){
        //TO DO's
    }

    [BeforeScenario(order = 1)]
    public void BeforeScenarioURLLaunch(){
        //TO DO's
    }
```

## Tag Property

If any hook need to execute only for specfic tag, we can use tag property.

The tag should be passed as string arguments

```C#
    [BeforeScenario("Smoke_Test")]
    public void BeforeScenarioSmoke(){
        //TO DO's
    }

    [BeforeScenario("Regression_Test")]
    public void BeforeScenarioReg(){
        //TO DO's
    }
```

Note: Tag property cannot be used for `[BeforeTestRun]` and `[AfterTestRun]`

When using Tag and Order property together, pass the tags first

```C#
    [BeforeScenario("tagName", Order =1)]
    public void BeforeScenario()
    {
        //TO DO's
    }
```

|Hook Attribute| Tag Property | Order Property | Static Method
|--------------|--------------|----------------|--------------
|[BeforeTestRun] \\ [AfterTestRun]|**No**|Yes|must be a static method
|[BeforeFeature] \\ [AfterFeature]|Yes|Yes|must be a static method
|[BeforeScenario] \\ [AfterScenario]|Yes|Yes|not mandatory
|[BeforeScenarioBlock] \\ [AfterScenarioBlock]|Yes|Yes|not mandatory
|[BeforeStep] \\ [AfterStep]|Yes|Yes|not mandatory
