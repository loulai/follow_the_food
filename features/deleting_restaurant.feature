Feature: I want to delete restaurants that I've added

Scenario: Deleting a restaurant
	Given there is a restaurant added
	And I visit the edit restaurant page
	And I click on "Delete Restaurant"
	Then I should not see that restaurant in the homepage
