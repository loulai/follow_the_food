Feature: Editing a restaurant's details

Scenario: Editing the restaurant's description
	Given There is a restaurant added
	And I visit the edit restaurant page
	And I fill in "Description" with "Update: Won universe award"
	