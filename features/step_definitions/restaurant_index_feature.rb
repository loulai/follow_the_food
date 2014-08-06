Given(/^There is a restaurant added$/) do
  @bocca_di_lupo = Restaurant.create(name: "Bocca Di Lupo", city: "London", description: "An amazing Italian place. The absolute best.", location: "12 Archer St, London W1D 7BB, United Kingdom")
  expect(Restaurant.all.count).to eq 1
end

Then(/^I should see the details of that restaurant, like its name and city$/) do
  pending # express the regexp above with the code you wish you had
end

