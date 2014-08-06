Then(/^I should see button "(.*?)"$/) do |button_name|
	expect(page).to have_button button_name
end