Feature: The restaurant index page is the homepage. This is where 
you see a big list of all the restaurants.

Background: There is a restaurant added
	Given There is a restaurant added
	And I visit the restaurants page

Scenario: Seeing a list of restaurants
	Then I should see some details of that restaurant like its name and city 

Scenario: Clicking on the restaurant's name should get me somewhere
	Given I click on the restaurant's name
	Then I should be on that restaurant's 'show more' page

# Scenario 1: for now tho, I can see all details. The phrasing 'some details' is just here so when I begin adding details like links and review etc to each restaurant, it won't all show
