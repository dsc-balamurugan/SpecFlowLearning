# Scenario Outline

� ***Scenario Outline: can be used to run the same scenario multiple times with different combination of values.***

� Scenario outline is also used to pass different parameter combination for testing

� The parameter name should be enclosed within ***<>*** in a step

� Scenario outline must contain ***Examples:(or Scenarios:)*** section at the end

� Examples section is a delimited table which contains parameter names as header and values as rows 

� Examples section cannot have a duplicate header
	

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

In the above feature *user* and *pass* are the parameters

The above scenario will execute 3 times, since we have 3 rows of values.
