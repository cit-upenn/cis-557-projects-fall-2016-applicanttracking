

# This is the step definitions file for Cucumber testing

############ Given statements ###########

# => Users        							#
Given (/^that I am on the New Users Page$/ ) do
	visit("http://localhost:3000/users/new")
end

Given (/^that I am on the Users Page$/ ) do
	visit("http://localhost:3000/users")
end


# => Awards                                 #
Given (/^that I am on the New Awards Page$/ ) do
	visit("http://localhost:3000/awards/new")
end

Given (/^that I am on the Awards Page$/ ) do
	visit("http://localhost:3000/awards")
end

# => Admins 								#
Given (/^that I am on the New Admins Page$/ ) do
	visit("http://localhost:3000/admins/new")
end

Given (/^that I am on the Admins Page$/ ) do
	visit("http://localhost:3000/admins")
end

# => Education 								#
Given (/^that I am on the New Education Page$/ ) do
	visit("http://localhost:3000/educations/new")
end

Given (/^that I am on the Education Page$/ ) do
	visit("http://localhost:3000/educations")
end

# => Experience 							#
Given (/^that I am on the New Experience Page$/ ) do
	visit("http://localhost:3000/experiences/new")
end

Given (/^that I am on the Experience Page$/ ) do
	visit("http://localhost:3000/experiences")
end

# => Extracurriculars 						#
Given (/^that I am on the New Extracurriculars Page$/ ) do
	visit("http://localhost:3000/extracurriculars/new")
end

Given (/^that I am on the Extracurriculars Page$/ ) do
	visit("http://localhost:3000/extracurriculars")
end

# => Githubs 								#
Given (/^that I am on the New Githubs Page$/ ) do
	visit("http://localhost:3000/githubs/new")
end

Given (/^that I am on the Githubs Page$/ ) do
	visit("http://localhost:3000/githubs")
end

# => LinkedIns 								#
Given (/^that I am on the New LinkedIns Page$/ ) do
	visit("http://localhost:3000/linkedins/new")
end

Given (/^that I am on the LinkedIns Page$/ ) do
	visit("http://localhost:3000/linkedins")
end


############ When statements ###########

# => Users 				#
When (/^I click new Users button$/ ) do
	
	#page.find_button('New')
	#click_button "New"
	find("a[href='/users/new']").click
	#print page.html

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

When (/^I try to create a new Applicant Profile without name field$/ ) do
	
	
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

When (/^I try to delete an existing Applicant Profile$/ ) do
	#click_button "Delete"
	page.driver.browser.switch_to.alert.accept
end

# => Awards                                #


When (/^I click new Award button$/ ) do
	find("a[href='/awards/new']").click
end

When (/^I try to create a new Award$/ ) do

	fill_in 'award_name' , :with => "Turing"
	fill_in 'award_description' , :with => "Prestigious CS award"
	fill_in 'award_date' , :with => "2005-10-2"
	fill_in 'award_user_id' , :with => "1"

	click_button "Create Award"

end

When (/^I try to create a new Award Without name field$/ ) do

	fill_in 'award_description' , :with => "Prestigious CS award"
	fill_in 'award_date' , :with => "2005-10-2"
	fill_in 'award_user_id' , :with => "1"

	click_button "Create Award"

end


When (/^I try to delete an existing Award$/ ) do
	click_button "Delete"
end

# => Admins 								#

When (/^I click new Admin button$/ ) do
	find("a[href='/admins/new']").click
end

When (/I try to create a new Admin Profile$/ ) do
	fill_in 'admin_api_auth_token' , :with => "SADFASF1231231SDFASDF"
	fill_in 'admin_email' , :with => "email.com"
	fill_in 'admin_first_name' , :with => "Bill"
	fill_in 'admin_middle_name' , :with => "Nye"
	fill_in 'admin_last_name' , :with => "Science Guy"

	click_button "Create Admin"

end

When (/I try to create a new Admin Profile without name field$/ ) do
	fill_in 'admin_api_auth_token' , :with => "SADFASF1231231SDFASDF"
	fill_in 'admin_email' , :with => "email.com"
	
	fill_in 'admin_middle_name' , :with => "Nye"
	fill_in 'admin_last_name' , :with => "Science Guy"

	click_button "Create Admin"

end


When (/^I try to delete an existing Admin Profile$/ ) do
	click_button "Delete"
end

# => Education 								#

When (/^I click new Education button$/ ) do
	find("a[href='/educations/new']").click
end

When (/I try to create a new Education Content$/ ) do
	
	fill_in 'education_start' , :with => "2016-10-29"
	fill_in 'education_end' , :with => "2016-10-30"
	fill_in 'education_current' , :with => "true"
	fill_in 'education_degree' , :with => "MA"
	fill_in 'education_school' , :with => "UPenn"
	fill_in 'education_gpa' , :with => "4.0"
	fill_in 'education_major' , :with => "Computer Science"
	fill_in 'education_minor' , :with => "Math"
	fill_in 'education_user_id' , :with => "1"

	click_button "Create Education"

end

When (/I try to create a new Education Content without current field$/ ) do
	
	fill_in 'education_start' , :with => "2016-10-29"
	fill_in 'education_end' , :with => "2016-10-30"
	
	fill_in 'education_degree' , :with => "MA"
	fill_in 'education_school' , :with => "UPenn"
	fill_in 'education_gpa' , :with => "4.0"
	fill_in 'education_major' , :with => "Computer Science"
	fill_in 'education_minor' , :with => "Math"
	fill_in 'education_user_id' , :with => "1"

	click_button "Create Education"

end



When (/^I try to delete an existing Education$/ ) do
	click_button "Delete"
end

# => Experience 							#

When (/^I click new Experience button$/ ) do
	find("a[href='/experiences/new']").click
end

When (/I try to create a new Experience Content$/ ) do
	
	fill_in 'experience_start' , :with => "2016-10-29"
	fill_in 'experience_end' , :with => "2016-10-30"
	fill_in 'experience_current' , :with => "true"
	fill_in 'experience_title' , :with => "Software Engineer"
	fill_in 'experience_company' , :with => "Microsoft"
	fill_in 'experience_description' , :with => "Do CS stuff"
	fill_in 'experience_user_id' , :with => "1"

	click_button "Create Experience"

end

When (/Create a new Experience Content without current field$/ ) do
	
	fill_in 'experience_start' , :with => "2016-10-29"
	fill_in 'experience_end' , :with => "2016-10-30"
	
	fill_in 'experience_title' , :with => "Software Engineer"
	fill_in 'experience_company' , :with => "Microsoft"
	fill_in 'experience_description' , :with => "Do CS stuff"
	fill_in 'experience_user_id' , :with => "1"

	click_button "Create Experience"

end


When (/^I try to delete an existing Experience$/ ) do
	click_button "Delete"
end

# => Extracurriculars 						#

When (/^I click new Extracurricular button$/ ) do
	find("a[href='/extracurriculars/new']").click
end

When (/I try to create a new Extracurriculars Content$/ ) do
	
	fill_in 'extracurricular_start' , :with => "2016-10-29"
	fill_in 'extracurricular_end' , :with => "2016-10-30"
	fill_in 'extracurricular_organization' , :with => "Microhard"
	fill_in 'extracurricular_current' , :with => "true"
	fill_in 'extracurricular_position' , :with => "Advisor"
	fill_in 'extracurricular_description' , :with => "Do CS hard stuff"
	fill_in 'extracurricular_user_id' , :with => "1"

	click_button "Create Extracurricular"

end

When (/I try to create a new Extracurriculars Content without current field$/ ) do
	
	fill_in 'extracurricular_start' , :with => "2016-10-29"
	fill_in 'extracurricular_end' , :with => "2016-10-30"
	fill_in 'extracurricular_organization' , :with => "Microhard"
	
	fill_in 'extracurricular_position' , :with => "Advisor"
	fill_in 'extracurricular_description' , :with => "Do CS hard stuff"
	fill_in 'extracurricular_user_id' , :with => "1"

	click_button "Create Extracurricular"

end


When (/^I try to delete an existing Extracurriculars$/ ) do
	click_button "Delete"
end

# => Githubs 								#

When (/^I click new Github button$/ ) do
	find("a[href='/githubs/new']").click
end

When (/I try to create a new Githubs Content$/ ) do
	
	fill_in 'github_path' , :with => "github.com/cis557"
	fill_in 'github_username' , :with => "cis557student"
	fill_in 'github_user_id' , :with => "1"
	
	click_button "Create Github"

end

When (/I try to create a new Githubs Content without url$/ ) do
	
	
	fill_in 'github_username' , :with => "cis557student"
	fill_in 'github_user_id' , :with => "1"
	
	click_button "Create Github"

end


When (/^I try to delete an existing Githubs$/ ) do
	click_button "Delete"
end


# => LinkedIns 								#

When (/^I click new LinkedIn button$/ ) do
	find("a[href='/linkedins/new']").click
end

When (/I try to create a new LinkedIns Content$/ ) do
	
	fill_in 'linkedin_path' , :with => "linkedin.com/cis557"
	fill_in 'linkedin_username' , :with => "cis557student"
	fill_in 'linkedin_user_id' , :with => "1"
	
	click_button "Create Linkedin"

end

When (/I try to create a new LinkedIns Content without url$/ ) do
	
	
	fill_in 'linkedin_username' , :with => "cis557student"
	fill_in 'linkedin_user_id' , :with => "1"
	
	click_button "Create Linkedin"

end

When (/^I try to delete an existing LinkedIns$/ ) do
	click_button "Delete"
end



########### Then statements###########

# => Users 									#
Then (/^I should see the new Applicant Profile page$/) do
	assert page.has_content?( "User was successfully created" )

	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end

Then (/^I should see the new Applicant form page$/) do
	assert page.has_content?( "New User" )
end

Then (/^I should see that the Applicant Profile is deleted$/) do
	assert page.has_content?( "User was successfully destroyed" )

	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end


# => Awards                                 #
Then (/^I should see the new Award page$/) do
	assert page.has_content?( "Award was successfully created" )

	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end

Then (/^I should see the new Award form page$/) do
	assert page.has_content?( "New Award" )
end


Then (/^I should see that the Award is deleted$/) do
	assert page.has_content?( "User was successfully destroyed" )

	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end


# => Admins 								#
Then (/^I should see the new Admin page$/) do
	assert page.has_content?( "Admin was successfully created" )

	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end

Then (/^I should see the new Admin form page$/) do
	assert page.has_content?( "New Admin" )
end

Then (/^I should see that the Admin Profile is deleted$/) do
	assert page.has_content?( "User was successfully destroyed" )

	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end


# => Education 								#
Then (/^I should see the new Education page$/) do
	assert page.has_content?( "Education was successfully created" )

	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end

Then (/^I should see the new Education form page$/) do
	assert page.has_content?( "New Education" )
end

Then (/^I should see that the Education Content is deleted$/) do
	assert page.has_content?( "User was successfully destroyed" )

	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end

# => Experience 							#
Then (/^I should see the new Experience page$/) do
	assert page.has_content?( "Experience was successfully created" )

	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end

Then (/^I should see the new Experience form page$/) do
	assert page.has_content?( "New Experience" )
end

Then (/^I should see that the Experience Content is deleted$/) do
	assert page.has_content?( "User was successfully destroyed" )

	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end

# => Extracurriculars 						#
Then (/^I should see the new Extracurriculars page$/) do
	assert page.has_content?( "Extracurricular was successfully created" )

	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end

Then (/^I should see the new Extracurricular form page$/) do
	assert page.has_content?( "New Extracurricular" )
end

Then (/^I should see that the Extracurriculars Content is deleted$/) do
	assert page.has_content?( "User was successfully destroyed" )

	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end

# => Githubs 								#
Then (/^I should see the new Githubs page$/) do
	assert page.has_content?( "Github was successfully created" )

	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end

Then (/^I should see the new Github form page$/) do
	assert page.has_content?( "New Github" )
end

Then (/^I should see that the Githubs Content is deleted$/) do
	assert page.has_content?( "User was successfully destroyed" )

	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end


# => LinkedIns 								#
Then (/^I should see the new LinkedIns page$/) do
	assert page.has_content?( "Linkedin was successfully created" )

	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end

Then (/^I should see the new LinkedIn form page$/) do
	assert page.has_content?( "New Linkedin" )
end

Then (/^I should see that the LinkedIns Content is deleted$/) do
	assert page.has_content?( "User was successfully destroyed" )

	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end

# => General Error message #
Then (/^I should see an Error$/) do
	 assert page.has_css?('div.field_with_errors')
end
