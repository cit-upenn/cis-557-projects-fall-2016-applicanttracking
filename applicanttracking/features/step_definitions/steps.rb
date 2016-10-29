

# This is the step definitions file for Cucumber testing

Given (/^that I am on the New Users Page$/ ) do
	visit("http://localhost:3000/users/new")
end

Given (/^that I am on the Users Page$/ ) do
	visit("http://localhost:3000/users")
end


When (/^I try to create a new Applicant Profile$/ ) do
	
	fill_in 'user_first_name' , :with => "Beyonce"
	fill_in 'user_middle_name', :with => "Giselle"
	fill_in 'user_last_name', :with => "Knowles-Carter"
	fill_in 'user_dob', :with => "1981-9-4"
	fill_in 'user_phone', :with => "3017429005"
	fill_in 'user_email', :with => "stevenhw@seas.upenn.edu"
	fill_in 'user_street_address', :with => "123 Music St."
	fill_in 'user_city', :with => "Los Angelos"
	fill_in 'user_state', :with => "CA"
	fill_in 'user_country', :with => "USA"
	fill_in 'user_zipcode', :with => "20854"
	
	click_button "Create User"

end

Then (/^I should see the new Applicant Profile page$/) do
	assert page.has_content?( "User was successfully created" )

	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end
