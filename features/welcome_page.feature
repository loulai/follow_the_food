Feature: The first thing you see when visiting zhefood.com

Background: Being on the homepage
	Given I visit the homepage

Scenario: Seeing the countries on the homepage
	Then I should see a list of countries

Scenario: Clicking on a country
	Given I click on "London"
	Then I should be on the restaurant page