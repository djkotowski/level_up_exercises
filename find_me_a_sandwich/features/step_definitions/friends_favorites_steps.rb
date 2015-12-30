Given(/^there are no other users who have favorites$/) do
  @users[:public].each do |user|
    user.favorites = []
  end
end

Given(/^there are no other users$/) do
  @users = []
end

Given(/^there are other users who have favorites$/) do
  FactoryGirl.create(:favorite, menu_item_id: 1, user_id: @users[:public][0].id)
  FactoryGirl.create(:favorite, menu_item_id: 2, user_id: @users[:public][1].id)
  FactoryGirl.create(:favorite, menu_item_id: 2, user_id: @users[:public][0].id)
  FactoryGirl.create(:favorite, menu_item_id: 1, user_id: @users[:public][1].id)
end

When(/^I click the friends favorites button$/) do
  click_link "Friends Favorites"
end

Then(/^I see my friends favorites$/) do
  expect(page).to have_content("You have 10 Friends")
  expect(page).to have_content("Something something sandwich 1")
  expect(page).to have_content("Something something sandwich 2")
end

Then(/^I am informed that my friends have no favorites$/) do
  expect(page).to have_content("They have 0 Favorites")
end

Then(/^I am informed that I have no friends$/) do
  expect(page).to have_content("You have 0 Friends")
end
