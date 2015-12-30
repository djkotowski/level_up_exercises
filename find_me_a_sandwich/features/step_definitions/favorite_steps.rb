Given(/^I am on the favorites browse page$/) do
  visit '/favorites/browse'
end

Given(/^I am on my favorites page$/) do
  visit '/users/1/favorites'
end

Given(/^I search for merchants by ZIP$/) do
  create_merchants_with_zip("60654", 10)
end

When(/^I am on a merchant menu page$/) do
  visit '/merchants/1'
end

When(/^I favorite a meal$/) do
  first('.save_favorite_checkbox').set(true)
  first('.save_favorite_button').click
end

Then(/^I want it to be added to my favorites list$/) do
  visit '/users/1/favorites'
  first(:css, '.favorite_name').nil?
end

When(/^I unfavorite a meal$/) do
  first(:css, '.save_favorite_checkbox').set(false)
  first(:css, '.save_favorite_button').click
end

When(/^I remove a meal$/) do
  first(:css, '.favorite_remove_link').click
end

Then(/^I should see a list of my favorite meals$/) do
  visit '/users/1/favorites'
  first(:css, '.favorite_name').visible?
end

Then(/^The meal should not be in my favorites$/) do
  first(:css, '.favorite_name').nil?
end

Then(/^I want to browse other's favorite meals$/) do
  visit '/favorites/browse'
end
