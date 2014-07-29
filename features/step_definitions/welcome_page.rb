Given(/^I visit the homepage$/) do
  visit '/'
end

Then(/^I should see a list of countries$/) do
  expect(page).to have_content "London"
  expect(page).to have_content "New York"
  expect(page).to have_content "Melbourne"
  expect(page).to have_content "Kuala Lumpur"
end

Given(/^I click on "(.*?)"$/) do |clicky|
	click_on clicky
end

Then(/^I should be on the London restaurant page$/) do
  pending # express the regexp above with the code you wish you had
end

