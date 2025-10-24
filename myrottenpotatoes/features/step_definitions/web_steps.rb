# Definições de passos básicos de navegação usando Capybara
# Estes são passos DECLARATIVOS que descrevem WHAT (o que) ao invés de HOW (como)

Given(/^I am on (.+)$/) do |page_name|
  visit path_to(page_name)
end

When(/^I follow "([^"]*)"$/) do |link|
  click_link(link)
end

When(/^I press "([^"]*)"$/) do |button|
  click_button(button)
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, :with => value)
end

When(/^I select "([^"]*)" from "([^"]*)"$/) do |value, field|
  select(value, :from => field)
end

Then(/^I should be on (.+)$/) do |page_name|
  expect(current_path).to eq(path_to(page_name))
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end

Then(/^I should not see "([^"]*)"$/) do |text|
  expect(page).not_to have_content(text)
end

# Para checkboxes (filtros de rating)
When(/^I check the following ratings: (.*)$/) do |rating_list|
  rating_list.split(', ').each do |rating|
    check("ratings_#{rating}")
  end
end

When(/^I uncheck the following ratings: (.*)$/) do |rating_list|
  rating_list.split(', ').each do |rating|
    uncheck("ratings_#{rating}")
  end
end

# Verificar ordem dos filmes na página
Then(/^I should see "([^"]*)" before "([^"]*)"$/) do |e1, e2|
  expect(page.body.index(e1)).to be < page.body.index(e2)
end
