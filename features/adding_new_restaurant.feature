Feature: Adding a new restaurant article to the website

Background: Being on the right page to create a restaurant article	
	Given I visit the new restaurant page

Scenario: Filling in the form for a new restaurant
	Given I visit the new restaurant page
	Then I should see a whole bunch of fields to fill in 
	And I should see a 'Save Restaurant' button