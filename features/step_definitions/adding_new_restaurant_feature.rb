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

Then(/^I should see my newly created post$/) do
	expect(page).to have_content 'Bocca Di Lupo'
	expect(page).to have_content 'England'
	expect(page).to have_content 'It was such a fab experience!'
	expect(page).to have_content '12 Archer St, London W1D 7BB, United Kingdom'
	expect(current_path).to eq '/restaurants/1'
end

Given(/^I fill in details for a restaurant called "(.*?)", London$/) do |restaurant_name|
  fill_in("Name", :with => restaurant_name)
  fill_in("Country", :with => "England")
  fill_in("Description", :with => "It was such a fab experience!")
  fill_in("Location", :with => "12 Archer St, London W1D 7BB, United Kingdom")
end
