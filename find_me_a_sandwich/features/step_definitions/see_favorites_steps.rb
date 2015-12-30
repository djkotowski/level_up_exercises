Given(/^I have no favorites$/) do
  @favorites = []
end

When(/^I click the my favorites link$/) do
  click_link "My Favorites"
end

Then(/^I can see all my favorites$/) do
  expect(page).to have_content("You have 5 Favorites")
  expect(page).to have_content("Something something sandwich")
end

Then(/^I am informed that I have no favorites$/) do
  expect(page).to have_content("You have 0 Favorites")
end
