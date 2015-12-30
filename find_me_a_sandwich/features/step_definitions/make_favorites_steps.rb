Given(/^I am looking at a merchant with a menu$/) do
  @merchant = Merchant.find(1)
  visit "/merchants/1"
end

Given(/^that menu item is already a favorite$/) do
  @favorite = FactoryGirl.create(:favorite, menu_item_id: 1, user_id: @user.id)
end

When(/^I go to that merchant page$/) do
  visit "/merchants/1"
end

When(/^I click favorites$/) do
  first(".add-favorite").click
end

Then(/^the meal is visible in my account as a favorite$/) do
  expect(page).to have_content("You have 1 Favorite")
  expect(page).to have_content(@merchant.name)
end

Then(/^there is a remove button$/) do
  expect(page).to have_content("Remove from Favorites")
end
