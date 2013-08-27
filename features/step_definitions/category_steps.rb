
Given /the following categories exists/ do |table|
  table.hashes.each do |category|
    step "I create a category with name \"#{category['name']}\", keywords \"#{category['keywords']}\" and description \"#{category['description']}\""
  end
end

Given /I create a category with name "(.*)", keywords "(.*)" and description "(.*)"/ do |name,keywords,description|
  visit '/admin/categories/new'
  fill_in "category[name]", with: name
  fill_in "category[keywords]", with: keywords
  fill_in "category[description]", with: description
  click_button "Save"
end
