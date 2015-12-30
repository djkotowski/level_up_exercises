Given(/^there are merchants for 60606$/) do
  create_merchants_with_zip("60606", 10)
end

Given(/^I search for 60606$/) do
  fill_in "location", with: "60606"
  click_button("Search")
end

When(/^I visit a merchant page$/) do
  first(".merchant-link").click
end

Then(/^I see that merchant's menus$/) do
  expect(page).to have_content("Add to Favorites")
end
