Feature: Test Acorns
Scenario: Test Login
	Given a user at 'https://www.redfin.com'
	When  the user logs in
	Then  the user should appear logged in

Scenario: Test Search Result and Filter
	Given a user at 'https://www.redfin.com'
	When  the user searches for a home in zip code '92626'
	And   selects the top result
	And   clicks on the filter button
	And   sets to a min of 3 beds
	And   sets to a max of 4 beds
	And   chooses 2+ bathrooms
	# And   sets a min of 750 square feet
	And   applies the filters
	Then  all results meet bedroom requirements
	And   all results meet bathroom requirements
	# And   all results meet meet square footage requirements

Scenario: Log In test with site prism
	Given a user at the redfin home page
	When  the user logs into their account
	Then  they are logged in

Scenario: Test Search Result and Filter with site prism
	Given a user at the redfin home page
	When  the user enters '92626' in the search field
	And   clicks on the first result in the dropdown menu
	And   clicks on the expand filter button
	And   sets a min of 3 beds
	And   sets a max of 4 beds
	And   sets to 2+ bathrooms
	And   sets a 750 square feet minimum
	And   applies filters
	Then  results meet bedroom requirements
	And   results meet bathroom requirements
	And   results meet square footage requirements
