#--- finding basic content

Then(/^I should see a list of countries$/) do
  expect(page).to have_content "London"
  expect(page).to have_content "New York"
  expect(page).to have_content "Melbourne"
  expect(page).to have_content "Kuala Lumpur"
end

Then(/^I should see my newly created post back in the homepage/) do
	expect(page).to have_content 'Bocca Di Lupo'
	expect(page).to have_content 'London'
	expect(page).to have_content 'It was such a fab experience!'
	expect(page).to have_content '12 Archer St, London W1D 7BB, United Kingdom'
	expect(current_path).to eq '/restaurants/1'
end


Then(/^I should see all the details of that restaurant$/) do
  expect(page).to have_content 'Bocca Di Lupo'
	expect(page).to have_content 'London'
	expect(page).to have_content 'An amazing Italian place. The absolute best.'
	expect(page).to have_content '12 Archer St, London W1D 7BB, United Kingdom
end


#--- finding fields

Then(/^I should see a whole bunch of fields to fill in$/) do
	expect(page).to have_field 'Name'
	expect(page).to have_field 'City'
	expect(page).to have_field 'Description'
	expect(page).to have_field 'Location'
end

#--- finding buttons

Then(/^I should see a 'Save Restaurant' button$/) do
  expect(page).to have_button 'Save Restaurant' 
end

Then(/^I should see button "(.*?)"$/) do |button_name|
	expect(page).to have_button button_name
end

#--- finding links

Then(/^I should see link "(.*?)"$/) do |link_name|
  expect(page).to have_content link_name
end

# Then(/^I should see the details of that restaurant like its name and city$/) do
# 	expect(page).to have_content "Bocca Di Lupo"
# 	expect(page).to have_content "London"
# end




