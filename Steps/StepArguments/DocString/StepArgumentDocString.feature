Feature: Step Argument Doc String

Scenario: Passing argument as doc string in step
	Given User navigate to the Gmail application
	When User compose a new mail
	Then User fill the mail "body" as below
		"""
		Dear Sir/Madam,
		
		[ This is the body of the mail. ]
		
		Thank you,
		"""
	And User enters the to mail add subject and click send