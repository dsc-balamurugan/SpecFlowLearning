Feature: Without backgroud keyword

# the first 3 steps are common in all scenarios
Scenario: Send a friend request
	Given User navigate to the application
	When User enter login credentials
	Then User can see homepage
	And User can search a freind
	Then User can select a freind from result
	Then User send a friend request

Scenario: Like a post
	Given User navigate to the application
	When User enter login credentials
	Then User can see homepage
	And User can see feeds in homepage
	Then User can scroll the feed
	And User can like a post in feed

Scenario: Send a message
	Given User navigate to the application
	When User enter login credentials
	Then User can see homepage
	And User click any friend's profile
	Then User can see message option
	And User can see a message

