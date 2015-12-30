Given(/^there are merchants for 60654$/) do
  create_merchants_with_zip("60654", 10)
end

Given(/^I search for 60654$/) do
  fill_in "location", with: "60654"
  click_button("Search")
end

When(/^I visit a merchant page$/) do
  visit '/merchants/1'
end

Then(/^I see that merchant's menus$/) do
  expect(page).to have_css('div.panel-body')
end