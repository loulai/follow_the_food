Given(/^I visit the new restaurant page$/) do
  visit '/restaurants/new'
end

Then(/^I should see a whole bunch of fields to fill in$/) do
	expect(page).to have_field 'Name'
	expect(page).to have_field 'Country'
	expect(page).to have_field 'Description'
	expect(page).to have_field 'Location'
end

Then(/^I should see a 'Save Restaurant' button$/) do
  expect(page).to have_button 'Save Restaurant' 
end

Given(/^I visit the homepage after adding a new restaurant$/) do
  visit '/restaurants/new'
  
end

Then(/^I should see the new restaurant$/) do
  pending # express the regexp above with the code you wish you had
end

