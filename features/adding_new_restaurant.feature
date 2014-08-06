Feature: Adding a new restaurant article to the website

Scenario: Seeing the correct fields to fill in
	Given I visit the new restaurant page
	Then I should see a whole bunch of fields to fill in 
	And I should see a 'Save Restaurant' button

Scenario: Filling in the fields and clicking 'Save Restaurant'
	Given I visit the new restaurant page
	And I fill in "Name" with "Bocca Di Lupo"
	And I fill in "Country" with "London"
	And I fill in "Description" with "It was such a fab experience!"
	And I fill in "Location" with "12 Archer St, London W1D 7BB, United Kingdom"
	And I click on "Save Restaurant"
	Then I should be redirected to the homepage
	And I should see my newly added restaurant
