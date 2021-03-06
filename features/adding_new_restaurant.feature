Feature: Adding a new restaurant article to the website

Scenario: Seeing all the correct fields to fill in
	Given I visit the new restaurant page
	Then I should see a whole bunch of fields to fill in 
	And I should see a "Create Restaurant" button

Scenario: Making a new restaurant entry
	Given I visit the new restaurant page
	And I fill in details for a restaurant called "Bocca Di Lupo", London
	And I click on "Create Restaurant"
	Then I should see my newly created post back in the homepage
