Feature: The individual restaurant review page

Scenario: There is a restaurant review added
	Given There is a restaurant added
	And I visit the restaurant's show page
	Then I should see all the details of that restaurant
	And I should see link "Back to Homepage"
	And I should see link "Edit Restaurant"