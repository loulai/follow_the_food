Feature: Adding a new restaurant article to the website

Scenario: Filling in the form for a new restaurant
	Given I visit the new restaurant page
	Then I should see a whole bunch of fields to fill in 
	And I should see a 'Save Restaurant' button

Scenario: Seeing my newly added restaurant
	Given I visit the homepage after adding a new restaurant
	Then I should see the new restaurant