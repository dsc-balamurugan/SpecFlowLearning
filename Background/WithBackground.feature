Feature: With backgroud keyword

# Steps within background will execute for all the scenarios inside the feature
# Background will execute before the first step in a scenario, but always execute after any Before hooks
Background:
	Given User navigate to the application
	When User enter login credentials <username> and <password>
	Then User can see homepage

Scenario: Send a friend request
	Given User can search a freind
	When User enter login credentials <username> and <password>
	When User can select a freind from result
	Then User send a friend request

Scenario: Like a post
	Given User can see feeds in homepage
	When User can scroll the feed
	And User can like a post in feed

Scenario: Send a message
	Given User click any friend's profile
	When User can see message option
	Then User can see a message
