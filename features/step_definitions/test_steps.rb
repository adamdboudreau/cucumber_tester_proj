When("I go to the {string} page") do |string|
  if %w(home main).include?(string)
    visit "/"
  else
    visit "/#{string}"
  end
end

When("I click on the {string} link") do |string|

	element = first(:xpath, "//a[@id='#{string}']")
	log "e : #{element.inspect}"
	element.click

end

Then("I should see the {string} title") do |string|
  title = first(:xpath, "//h1[@id='header-title']")
  expect(title.text).to eql string
end

Then('I enter the {string} {string} {string} and {string} into the form') do |guid, email, status, desc|
	fill_in 'test_user_guid', with: guid
	fill_in 'test_user_email', with: email
	fill_in 'test_user_status', with: status
	fill_in 'test_user_desc', with: desc
	Capybara::Screenshot.screenshot_and_save_page
	element = first(:xpath, "//input[@id='test_user_submit']")
	element.click
	Capybara::Screenshot.screenshot_and_save_page
	# fill_in 'order_first_name', with: 'free'
  # pending # Write code here that turns the phrase above into concrete actions
end