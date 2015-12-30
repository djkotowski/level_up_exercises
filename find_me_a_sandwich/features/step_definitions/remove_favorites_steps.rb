Given(/^I have specific favorites$/) do
  @favorites = FactoryGirl.create(:favorite, menu_item_id: 1, user_id: @user.id)
  @favorites = FactoryGirl.create(:favorite, menu_item_id: 2, user_id: @user.id)
end

When(/^I click to remove a favorite$/) do
  first(".remove-favorite").click
end

When(/^I click to remove another favorite$/) do
  first(".remove-favorite").click
end

Then(/^another favorite is removed$/) do
  expect(page).to have_content("You have 0 Favorites")
end

Then(/^I should not be able to click a remove button$/) do
  expect(page).not_to have_content("Remove from Favorites")
end
