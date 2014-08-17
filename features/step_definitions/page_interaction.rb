#--- filling in forms
Given(/^I fill in details for a restaurant called "(.*?)", London$/) do |restaurant_name|
  fill_in("Name", :with => restaurant_name)
  fill_in("City", :with => "England")
  fill_in("Description", :with => "It was such a fab experience!")
  fill_in("Location", :with => "12 Archer St, London W1D 7BB, United Kingdom")
end

Given(/^I fill in "(.*?)" with "(.*?)"$/) do |field, content|
  fill_in(field, :with => content)
end

#--- clicking buttons/links

Given(/^I click on "(.*?)"$/) do |clicky|
	click_on clicky
end

Given(/^I click on the restaurant's name$/) do
  click_on 'Bocca Di Lupo'
end
