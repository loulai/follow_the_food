Feature: The restaurant index page is the homepage. This is where 
you see a big list of all the restaurants.

Scenario: Seeing a list of restaurants
	Given I visit the restaurants page
	And There is a restaurant added
	# Then I should see some details of that restaurant like its name and city 