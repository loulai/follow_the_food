Feature: The restaurant index page is the homepage. This is where 
you see a big list of all the restaurants.

Background: There is a restaurant added
	Given There is a restaurant added

Scenario: Seeing a list of restaurants
	Given I visit the restaurants page
	Then I should see some details of that restaurant like its name and city 

#for now tho, I can see all details. The phrasing 'some details' is just here so when I begin adding details like links and review etc to each restaurant, it won't all show
