Feature: Editing a restaurant's details

Background: Basic requirements to edit a restaurant
	Given There is a restaurant added
	And I visit the edit restaurant page

Scenario: Editing the restaurant's description
	When I fill in "Description" with "Updated: recently closed"
	And I click on "Update Restaurant"
	Then I should be on that restaurant's 'show more' page
	And I should see my updated content, "Updated: recently closed"

