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

Given(/^I fill in "(.*?)" with "(.*?)"$/) do |field, content|
  fill_in(field, :with => content)
end

Then(/^I should see my new post$/) do
	expect(current_path).to eq 'restaurants/1'
	expect(page).to have_content 'Bocca Di Lupo'
end

