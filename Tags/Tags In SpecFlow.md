# Tags #

• Tags are used to *categories features and scenarios together*

• Tags are defined in a feature file by a prefix '@' followed by the tag name

• Tag Name should be a single word (Best practice: use underscore for two or more words)

• In SpecFlow tags are used to execute specific test cases together, instead of running whole suite.

***Syntax=> @TagName***

Eg. @Smoke_Test, @Regression_Test

Note:  If tags are used anywhere other than feature or scenario, an exception will be thrown "expected: #TagLine, #RuleLine, #Comment, #Empty, got 'Given User Navigate To Application' "

<style>
r { color: Red }
o { color: Orange }
g { color: Green }
b { color: SkyBlue }
</style>

<details>
           <summary><u>Tags In Feature</u></summary>
           <p>&emsp;&emsp;Assigning a tag to the feature in equivalent to assign it to all scenarios inside that feature.<br><g>@Smoke_Test</g></br>
           <b>Feature:</b> Tags In SpecFlow
           <b>Scenario:</b> Sign-In to the application<br>
           &emsp;<b>Given</b> User launch the browser and navigate to the application<br>
           &emsp;<b>When</b> User enter login credentials<br>
           &emsp;<b>Then</b> User can see homepage</br><br>
           <b>Scenario:</b> Search the text<br>
           &emsp;<b>Given</b> User launch the browser and navigate to the application<br>
           &emsp;<b>When</b> User enter login credentials<br>
           &emsp;<b>Then</b> User can see homepage</br>
           &emsp;<b>And</b> User search the given text<br><br>
           Here ,<g>@Smoke_Test</g> is the tag and is applicable to both the scenarios</p>
</details>

<br>

<details>
           <summary><u>Tags In Scenario</u></summary>
           <p><b>Feature:</b> Tags In SpecFlow<br><br>
           <g>@Smoke_Test</g><br>
           <b>Scenario:</b> Sign-In to the application<br>
           &emsp;<b>Given</b> User launch the browser and navigate to the application<br>
           &emsp;<b>When</b> User enter login credentials<br>
           &emsp;<b>Then</b> User can see homepage</br><br>
           <g>@Regression_Test</g><br>
           <b>Scenario:</b> Search the text<br>
           &emsp;<b>Given</b> User launch the browser and navigate to the application<br>
           &emsp;<b>When</b> User enter login credentials<br>
           &emsp;<b>Then</b> User can see homepage</br>
           &emsp;<b>And</b> User search the given text</p>
</details>

## Multiple Tags ##

• We can have multiple tags for a single scenario or feature

• Multiple tags are used when we need the same test case in two different category.

For Example: a single test case can be used for regression testing and functional testing as well.
<br><br>
<u>Usage:</u>

*1. We can mention multiple tags by adding space in between*
<p><b>Feature:</b> Multiple Tags<br><br>
           <g>@Smoke_Test @Regression_Test</g><br>
           <b>Scenario:</b> Sign-In to the application<br>
           &emsp;<b>Given</b> User launch the browser and navigate to the application<br>
           &emsp;<b>When</b> User enter login credentials<br>
           &emsp;<b>Then</b> User can see homepage</br>

Note: Do not use comma to separate the tags, the comma will add to the tagName (@Smoke, @Sanity means ***Sanity*** and ***Smoke,***)<br><br>

*2. We can define each tags in separate lines as well*
<p><b>Feature:</b> Multiple Tags<br><br>
           <g>@Smoke_Test</g><br>
           <g>@Regression_Test</g><br>
           <b>Scenario:</b> Sign-In to the application<br>
           &emsp;<b>Given</b> User launch the browser and navigate to the application<br>
           &emsp;<b>When</b> User enter login credentials<br>
           &emsp;<b>Then</b> User can see homepage</br><br>

## Ignore Tag ##

@ignore is a special tag in Specflow.<br>
When a scenario or feature is marked as @ignore, it won't execute when running the whole suite.



When executing @ignore scenario in feature, we will get the following output in VStudio<br>


Message:<br>
&emsp;Ignored scenario

Standard Output:<br>
&emsp;Ignored scenario

***Note: @ignore tag is a case insensitive***
