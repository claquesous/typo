Given /^an article "(.*?)" has content "(.*?)"$/ do |arg1, arg2|
  visit "/admin/content/new"
  fill_in :article_title, :with => arg1
  fill_in :article__body_and_extended_editor, :with =>arg2
  click_button :Publish
end

When /^I fill in "(.*?)" with the id for "(.*?)"$/ do |arg1, arg2|
  fill_in arg1, :with => Content.find_by_title(arg2).id
  pending # express the regexp above with the code you wish you had
end

Given /^article "(.*?)" has comment "(.*?)"$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Given /^I am not logged in as an admin$/ do
  pending # express the regexp above with the code you wish you had
end

