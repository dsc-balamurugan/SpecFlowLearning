# ********This file is only for syntactic representation********

# Below line is the feature tag, a feature tag is applicable to all scenarios inside
@Sanity_Test
Feature: Tags In SpecFlow

# Below line is a scenario tag
@Smoke_Test
Scenario: SignIn to the application
	Given User launch the browser and navigate to the application
	When User enter login credentials
	Then User can see homepage

# Below line is a scenario tag
@Regression_Test
Scenario: Search the text
	Given User launch the browser and navigate to the application
	When User enter login credentials
	Then User can see homepage
	And User search the given text

# Multiple tags by adding space in between
@Functional_Test @Smoke_Test
Scenario: Multiple tags in specflow
	Given User launch the browser and navigate to the application
	When User enter login credentials
	Then User can see homepage

# Multiple tags in separate lines
@Functional_Test
@Smoke_Test
Scenario: Logout from the application
	Given User click the menu button
	When User click the logout button
	Then User can see log out successful message

# Ignore tag (a special used to ignore this scenario)
@Ignore
Scenario: Ingore this scenario
	Given User launch the browser and navigate to the application
	When User enter login credentials
	Then User can see homepage

# Note: Steps are written only for demo purpose having no real meaning and are not implemented anywhere