#--- visiting pages

Given(/^I visit the homepage$/) do
  visit '/'
end

Given(/^I visit the restaurants page$/) do
	visit '/restaurants'
end

Given(/^I visit the new restaurant page$/) do
  visit '/restaurants/new'
end

Given(/^I visit the homepage after adding a new restaurant$/) do
  visit '/restaurants/new'
end

Given(/^I visit the restaurant's show page$/) do
  expect(Restaurant.all.count).to eq 1
  expect(Restaurant.first.id).to eq 1
  visit 'restaurants/1'
end



#--- querying page path

Then(/^I should be on the restaurant page$/) do
  expect(current_path).to eq('/restaurants')
end