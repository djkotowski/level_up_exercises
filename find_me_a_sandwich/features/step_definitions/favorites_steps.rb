Given(/^I am on the favorites page$/) do
  visit "/favorites"
end

Given(/^I have favorites$/) do
  @favorites = FactoryGirl.create_list(:favorite, 5)
  @user.favorites = @favorites
end

Then(/^that favorite is removed$/) do
  expect(page).to have_content("You have 1 Favorite")
end
