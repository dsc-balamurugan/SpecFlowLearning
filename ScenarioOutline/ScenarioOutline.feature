Feature: Scenario Outline In Specflow

Scenario Outline: Login to the application
	Given User navigate to the application
	When User enter login credentials as username <user> and password <pass>
	Then User can able to login
Scenarios:
	| user  | pass  |
	| User1 | pass1 |
	| User2 | pass2 |
	| User3 | pass3 |
