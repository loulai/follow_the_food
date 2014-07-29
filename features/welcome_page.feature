Feature: The first thing you see when visiting zhefood.com

Scenario: Visiting the welcome page
	Given I visit the homepage
	Then I should see a list of countries

Scenario: Clicking on a country
	Given I click on "London"
	Then I should be on the London restaurant page