Given(/^I'm in "(.*?)"$/) do |arg1|
  visit to_url(arg1)
end

Given(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
  fill_in to_field(arg1), with: arg2
end

When(/^I submit "(.*?)"$/) do |arg1|
  page.find(to_element(arg1)).find("input[type='submit']").click
end

Then(/^I should be in "(.*?)"$/) do |arg1|
  page.current_path.should be == to_url(arg1)
end

Then(/^I should see "(.*?)"$/) do |arg1|
  page.should have_css(to_element(arg1))
end

Then(/^I should receive an email$/) do
  ActionMailer::Base.deliveries.should_not be_empty
end

Then(/^it should subscribed to MailChimp$/) do
  expect(@gb_lists).to have_received(:subscribe)
end