Given /^an article "(.*?)" has content "(.*?)"$/ do |title, content|
  step(%Q{I am on the new article page})
  step(%Q{I fill in "article_title" with "#{title}"})
  step(%Q{I fill in "article__body_and_extended_editor" with "#{content}"})
  step(%Q{I press "Publish"})
end

When /^I fill in "(.*?)" with the id for "(.*?)"$/ do |arg1, arg2|
  fill_in arg1, :with => Content.find_by_title(arg2).id
  step(%Q{I press "Merge"})
end

Given /^article "(.*?)" has comment "(.*?)"$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end

Given /^I am not logged in as an admin$/ do
  pending # express the regexp above with the code you wish you had
end

