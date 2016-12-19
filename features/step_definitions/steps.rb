

# This is the step definitions file for Cucumber testing

############  Creating dummy database records ############

Given (/^a Dummy User for Testing$/) do
	user = User.create(first_name: "David", 
					   last_name: "Camp", 
					   phone: 3017429005, 
					   dob: "2016-11-14" ,
		 			   email: "test@gmail.com",
		 			   street_address: "1234 test dr.",
		 			   city: "Philadelphia",
		 			   state: "PA", 
		 			   country: "US",
		 			   zipcode: "12345",
		 			   created_at: "2016-11-14 02:34:39",
		 			   updated_at: "2016-11-14 02:34:39",
		 			   submitted: true
	                   ) 
end

Given (/^a Dummy User with a score for Testing$/) do
	user = User.create(first_name: "David", 
					   last_name: "Camp", 
					   phone: 3017429005, 
					   dob: "2016-11-14" ,
		 			   email: "test@gmail.com",
		 			   street_address: "1234 test dr.",
		 			   city: "Philadelphia",
		 			   state: "PA", 
		 			   country: "US",
		 			   zipcode: "12345",
		 			   created_at: "2016-11-14 02:34:39",
		 			   updated_at: "2016-11-14 02:34:39",
		 			   submitted: true,
		 			   travel_score: "2"
	                   ) 
end


Given (/^a Dummy Question for Testing$/) do
	question = Question.create(prompt: "What is your occupation?", 
							   question_type: "personal"	
	                   			) 
end

Given (/^I need to Sign in as User$/) do
	email = 'test@email.com'
	password = '123456'

	user_credentials = UserCredential.new( :email => email, :password => password, :password_confirmation => password ).save!
    
    visit 'http://localhost:3000/user_credentials/sign_in'
    fill_in 'user_credential_email', :with => email
    fill_in 'user_credential_password', :with => password	

    click_button "Log in"
end

Given (/^I need to Sign in as Admin$/) do
	email = 'admin@email.com'
	password = '123456'

	user_credentials = AdminCredential.new( :email => email, :password => password, :password_confirmation => password ).save!
    
    visit 'http://localhost:3000/admin_credentials/sign_in'
    fill_in 'admin_credential_email', :with => email
    fill_in 'admin_credential_password', :with => password	

    click_button "Log in"
end

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
	visit("http://localhost:3000/admins")
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

# => Questions 								#
Given (/^that I am on the new Questions Page$/ ) do
	visit("http://localhost:3000/questions/new")
end

Given (/^that I am on the Questions Page$/ ) do
	visit("http://localhost:3000/questions")
end

# => Answers 								#
Given (/^that I am on the new Answers Page$/ ) do
	visit("http://localhost:3000/answers/new")
end

Given (/^that I am on the Answers Page$/ ) do
	visit("http://localhost:3000/answers")
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

    # selecting drop down menu
	find('#user_dob_1i').find(:xpath, "option[@value=2013]").select_option
	find('#user_dob_2i').find(:xpath, "option[@value=3]").select_option
	find('#user_dob_3i').find(:xpath, "option[@value=20]").select_option

	fill_in 'user_phone', :with => "3017429005"
	fill_in 'user_email', :with => "stevenhw@seas.upenn.edu"
	fill_in 'user_street_address', :with => "123 Music St."
	fill_in 'user_city', :with => "Los Angelos"
	fill_in 'user_state', :with => "CA"
	fill_in 'user_country', :with => "USA"
	fill_in 'user_zipcode', :with => "20854"

	check('user_submitted')
	
	click_button "Create User"

end

When (/^I try to create a new Applicant Profile without name field$/ ) do
	
	
	fill_in 'user_middle_name', :with => "Giselle"
	fill_in 'user_last_name', :with => "Knowles-Carter"
	
	find('#user_dob_1i').find(:xpath, "option[@value=2011]").select_option
	find('#user_dob_2i').find(:xpath, "option[@value=6]").select_option
	find('#user_dob_3i').find(:xpath, "option[@value=25]").select_option

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
	find('#award_date_1i').find(:xpath, "option[@value=2011]").select_option
	find('#award_date_2i').find(:xpath, "option[@value=6]").select_option
	find('#award_date_3i').find(:xpath, "option[@value=25]").select_option

	# fill_in 'award_user_id' , :with => "1"

	click_button "Create Award"

end

When (/^I try to create a new Award Without name field$/ ) do

	fill_in 'award_description' , :with => "Prestigious CS award"

	find('#award_date_1i').find(:xpath, "option[@value=2011]").select_option
	find('#award_date_2i').find(:xpath, "option[@value=6]").select_option
	find('#award_date_3i').find(:xpath, "option[@value=25]").select_option

	# fill_in 'award_user_id' , :with => "1"

	click_button "Create Award"

end

When (/^I try to create a new Award with an invalid date$/ ) do

	fill_in 'award_description' , :with => "Prestigious CS award"

	find('#award_date_1i').find(:xpath, "option[@value=2016]").select_option
	find('#award_date_2i').find(:xpath, "option[@value=12]").select_option
	find('#award_date_3i').find(:xpath, "option[@value=25]").select_option

	# fill_in 'award_user_id' , :with => "1"

	click_button "Create Award"

end


When (/^I try to delete an existing Award$/ ) do
	click_button "Delete"
end

# => Admins 								#

When (/^I click new Admin button$/ ) do
	find("a[href='/admins/new']").click
end

When (/I update the Admin Scoring Weights$/ ) do

	click_button "Ranking Metrics"

	fill_in 'admin_travel_metric' , :with => "0.5"
	
	click_button "Save Ranking Metrics"

end

When (/I check the Admin Scoring Weights$/ ) do

	click_button "Ranking Metrics"

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
	# find("a[href='/educations/new']").click
	click_button "Create Education"
end

When (/I try to create a new Education Content$/ ) do
	
	#fill_in 'education_start' , :with => "2016-10-29"
	#fill_in 'education_end' , :with => "2016-10-30"

	find('#education_start_1i').find(:xpath, "option[@value=2011]").select_option
	find('#education_start_2i').find(:xpath, "option[@value=6]").select_option
	find('#education_start_3i').find(:xpath, "option[@value=24]").select_option

	find('#education_end_date_1i').find(:xpath, "option[@value=2011]").select_option
	find('#education_end_date_2i').find(:xpath, "option[@value=6]").select_option
	find('#education_end_date_3i').find(:xpath, "option[@value=25]").select_option

	fill_in 'education_degree' , :with => "MA"
	fill_in 'education_school' , :with => "UPenn"
	fill_in 'education_gpa' , :with => "4.0"
	fill_in 'education_major' , :with => "Computer Science"
	# fill_in 'education_user_id' , :with => "1"

	click_button "Create Education"

end

When (/I try to create a new Education Content without gpa field$/ ) do
	
	# fill_in 'education_start' , :with => "2016-10-29"
	# fill_in 'education_end' , :with => "2016-10-30"

	find('#education_start_1i').find(:xpath, "option[@value=2011]").select_option
	find('#education_start_2i').find(:xpath, "option[@value=6]").select_option
	find('#education_start_3i').find(:xpath, "option[@value=25]").select_option

	find('#education_end_date_1i').find(:xpath, "option[@value=2011]").select_option
	find('#education_end_date_2i').find(:xpath, "option[@value=6]").select_option
	find('#education_end_date_3i').find(:xpath, "option[@value=25]").select_option
	
	fill_in 'education_degree' , :with => "MA"
	fill_in 'education_school' , :with => "UPenn"
	# fill_in 'education_gpa' , :with => "4.0"
	fill_in 'education_major' , :with => "Computer Science"
	# fill_in 'education_user_id' , :with => "1"

	click_button "Create Education"

end

When (/I try to create a new Education Content with an invalid start date$/ ) do
	
	# fill_in 'education_start' , :with => "2016-10-29"
	# fill_in 'education_end' , :with => "2016-10-30"

	find('#education_start_1i').find(:xpath, "option[@value=2013]").select_option
	find('#education_start_2i').find(:xpath, "option[@value=6]").select_option
	find('#education_start_3i').find(:xpath, "option[@value=25]").select_option

	find('#education_end_date_1i').find(:xpath, "option[@value=2011]").select_option
	find('#education_end_date_2i').find(:xpath, "option[@value=6]").select_option
	find('#education_end_date_3i').find(:xpath, "option[@value=25]").select_option
	
	fill_in 'education_degree' , :with => "MA"
	fill_in 'education_school' , :with => "UPenn"
	fill_in 'education_gpa' , :with => "4.0"
	fill_in 'education_major' , :with => "Computer Science"
	# fill_in 'education_user_id' , :with => "1"

	click_button "Create Education"

end

When (/I try to create a new Education Content with an invalid end date$/ ) do
	
	# fill_in 'education_start' , :with => "2016-10-29"
	# fill_in 'education_end' , :with => "2016-10-30"

	find('#education_start_1i').find(:xpath, "option[@value=2012]").select_option
	find('#education_start_2i').find(:xpath, "option[@value=6]").select_option
	find('#education_start_3i').find(:xpath, "option[@value=25]").select_option

	find('#education_end_date_1i').find(:xpath, "option[@value=2017]").select_option
	find('#education_end_date_2i').find(:xpath, "option[@value=6]").select_option
	find('#education_end_date_3i').find(:xpath, "option[@value=25]").select_option
	
	fill_in 'education_degree' , :with => "MA"
	fill_in 'education_school' , :with => "UPenn"
	fill_in 'education_gpa' , :with => "4.0"
	fill_in 'education_major' , :with => "Computer Science"
	# fill_in 'education_user_id' , :with => "1"

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
	
	# fill_in 'experience_start' , :with => "2016-10-29"
	# fill_in 'experience_end' , :with => "2016-10-30"

	find('#experience_start_1i').find(:xpath, "option[@value=2011]").select_option
	find('#experience_start_2i').find(:xpath, "option[@value=6]").select_option
	find('#experience_start_3i').find(:xpath, "option[@value=24]").select_option

	find('#experience_end_date_1i').find(:xpath, "option[@value=2011]").select_option
	find('#experience_end_date_2i').find(:xpath, "option[@value=6]").select_option
	find('#experience_end_date_3i').find(:xpath, "option[@value=25]").select_option


	# fill_in 'experience_current' , :with => "true"
	check('experience_current')
	fill_in 'experience_title' , :with => "Software Engineer"
	fill_in 'experience_company' , :with => "Microsoft"
	fill_in 'experience_description' , :with => "Do CS stuff"
	#fill_in 'experience_user_id' , :with => "1"

	click_button "Create Experience"

end

When (/Create a new Experience Content without company field$/ ) do
	
	# fill_in 'experience_start' , :with => "2016-10-29"
	# fill_in 'experience_end' , :with => "2016-10-30"

	find('#experience_start_1i').find(:xpath, "option[@value=2011]").select_option
	find('#experience_start_2i').find(:xpath, "option[@value=6]").select_option
	find('#experience_start_3i').find(:xpath, "option[@value=25]").select_option

	find('#experience_end_date_1i').find(:xpath, "option[@value=2011]").select_option
	find('#experience_end_date_2i').find(:xpath, "option[@value=6]").select_option
	find('#experience_end_date_3i').find(:xpath, "option[@value=25]").select_option

	
	fill_in 'experience_title' , :with => "Software Engineer"
	#fill_in 'experience_company' , :with => "Microsoft"
	fill_in 'experience_description' , :with => "Do CS stuff"
	#fill_in 'experience_user_id' , :with => "1"

	click_button "Create Experience"

end

When (/I try to create a new Experience Content with an invalid start date$/ ) do
	
	# fill_in 'experience_start' , :with => "2016-10-29"
	# fill_in 'experience_end' , :with => "2016-10-30"

	find('#experience_start_1i').find(:xpath, "option[@value=2012]").select_option
	find('#experience_start_2i').find(:xpath, "option[@value=6]").select_option
	find('#experience_start_3i').find(:xpath, "option[@value=25]").select_option

	find('#experience_end_date_1i').find(:xpath, "option[@value=2011]").select_option
	find('#experience_end_date_2i').find(:xpath, "option[@value=6]").select_option
	find('#experience_end_date_3i').find(:xpath, "option[@value=25]").select_option

	
	fill_in 'experience_title' , :with => "Software Engineer"
	#fill_in 'experience_company' , :with => "Microsoft"
	fill_in 'experience_description' , :with => "Do CS stuff"
	#fill_in 'experience_user_id' , :with => "1"

	click_button "Create Experience"

end

When (/I try to create a new Experience Content with an invalid end date$/ ) do
	
	# fill_in 'experience_start' , :with => "2016-10-29"
	# fill_in 'experience_end' , :with => "2016-10-30"

	find('#experience_start_1i').find(:xpath, "option[@value=2011]").select_option
	find('#experience_start_2i').find(:xpath, "option[@value=6]").select_option
	find('#experience_start_3i').find(:xpath, "option[@value=25]").select_option

	find('#experience_end_date_1i').find(:xpath, "option[@value=2016]").select_option
	find('#experience_end_date_2i').find(:xpath, "option[@value=12]").select_option
	find('#experience_end_date_3i').find(:xpath, "option[@value=25]").select_option

	
	fill_in 'experience_title' , :with => "Software Engineer"
	#fill_in 'experience_company' , :with => "Microsoft"
	fill_in 'experience_description' , :with => "Do CS stuff"
	#fill_in 'experience_user_id' , :with => "1"

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
	
	# fill_in 'extracurricular_start' , :with => "2016-10-29"
	# fill_in 'extracurricular_end' , :with => "2016-10-30"

	find('#extracurricular_start_1i').find(:xpath, "option[@value=2011]").select_option
	find('#extracurricular_start_2i').find(:xpath, "option[@value=6]").select_option
	find('#extracurricular_start_3i').find(:xpath, "option[@value=24]").select_option

	find('#extracurricular_end_date_1i').find(:xpath, "option[@value=2011]").select_option
	find('#extracurricular_end_date_2i').find(:xpath, "option[@value=6]").select_option
	find('#extracurricular_end_date_3i').find(:xpath, "option[@value=25]").select_option



	fill_in 'extracurricular_organization' , :with => "Microhard"
	# fill_in 'extracurricular_current' , :with => "true"
	check('extracurricular_current')
	fill_in 'extracurricular_position' , :with => "Advisor"
	fill_in 'extracurricular_description' , :with => "Do CS hard stuff"
	#fill_in 'extracurricular_user_id' , :with => "1"

	click_button "Create Extracurricular"

end

When (/I try to create a new Extracurriculars Content without position field$/ ) do
	
	# fill_in 'extracurricular_start' , :with => "2016-10-29"
	# fill_in 'extracurricular_end' , :with => "2016-10-30"
	find('#extracurricular_start_1i').find(:xpath, "option[@value=2011]").select_option
	find('#extracurricular_start_2i').find(:xpath, "option[@value=6]").select_option
	find('#extracurricular_start_3i').find(:xpath, "option[@value=25]").select_option

	find('#extracurricular_end_date_1i').find(:xpath, "option[@value=2011]").select_option
	find('#extracurricular_end_date_2i').find(:xpath, "option[@value=6]").select_option
	find('#extracurricular_end_date_3i').find(:xpath, "option[@value=25]").select_option

	fill_in 'extracurricular_organization' , :with => "Microhard"
	
	#fill_in 'extracurricular_position' , :with => "Advisor"
	fill_in 'extracurricular_description' , :with => "Do CS hard stuff"
	#fill_in 'extracurricular_user_id' , :with => "1"

	click_button "Create Extracurricular"

end

When (/I try to create a new Extracurriculars Content with an invalid start date$/ ) do
	
	# fill_in 'extracurricular_start' , :with => "2016-10-29"
	# fill_in 'extracurricular_end' , :with => "2016-10-30"
	find('#extracurricular_start_1i').find(:xpath, "option[@value=2013]").select_option
	find('#extracurricular_start_2i').find(:xpath, "option[@value=6]").select_option
	find('#extracurricular_start_3i').find(:xpath, "option[@value=25]").select_option

	find('#extracurricular_end_date_1i').find(:xpath, "option[@value=2011]").select_option
	find('#extracurricular_end_date_2i').find(:xpath, "option[@value=6]").select_option
	find('#extracurricular_end_date_3i').find(:xpath, "option[@value=25]").select_option

	fill_in 'extracurricular_organization' , :with => "Microhard"
	
	fill_in 'extracurricular_position' , :with => "Advisor"
	fill_in 'extracurricular_description' , :with => "Do CS hard stuff"
	#fill_in 'extracurricular_user_id' , :with => "1"

	click_button "Create Extracurricular"

end

When (/I try to create a new Extracurriculars Content with an invalid end date$/ ) do
	
	# fill_in 'extracurricular_start' , :with => "2016-10-29"
	# fill_in 'extracurricular_end' , :with => "2016-10-30"
	find('#extracurricular_start_1i').find(:xpath, "option[@value=2011]").select_option
	find('#extracurricular_start_2i').find(:xpath, "option[@value=6]").select_option
	find('#extracurricular_start_3i').find(:xpath, "option[@value=25]").select_option

	find('#extracurricular_end_date_1i').find(:xpath, "option[@value=2016]").select_option
	find('#extracurricular_end_date_2i').find(:xpath, "option[@value=12]").select_option
	find('#extracurricular_end_date_3i').find(:xpath, "option[@value=25]").select_option

	fill_in 'extracurricular_organization' , :with => "Microhard"
	
	fill_in 'extracurricular_position' , :with => "Advisor"
	fill_in 'extracurricular_description' , :with => "Do CS hard stuff"
	#fill_in 'extracurricular_user_id' , :with => "1"

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


# => questions 								#

When (/^I click new Question button$/ ) do
	find("a[href='/questions/new']").click
end

When (/I try to create a new Questions Content$/ ) do
	
	fill_in 'question_question_type' , :with => "Personal"
	fill_in 'question_prompt' , :with => "Sparta, what is you occupation?"
	
	click_button "Create Question"

end

When (/I try to create a new Questions Content without prompt field$/ ) do
	
	fill_in 'question_question_type' , :with => "Personal"
	
	click_button "Create Question"

end


# => Answers 								#

When (/^I click new Answer button$/ ) do
	find("a[href='/answers/new']").click
end

When (/I try to create a new Answers Content$/ ) do
	
	# fill_in 'answer_text_answer' , :with => "SAMPLE ANSWER"
	# fill_in 'answer_data_type' , :with => "text"
	# #fill_in 'answer_video_answer' , :with => "1"
	# fill_in 'answer_question_id' , :with => "1"
	# fill_in 'answer_user_id' , :with => "1"
	attach_file('answer_video', Rails.root.join('samples', 'small.mp4'))

	click_button "Create Answer"

end

When (/I try to create a new Answers Content without a video$/ ) do
	
	click_button "Create Answer"

end
 
When (/I try to create a new Answers Content with Video$/ ) do
	
	#attach_file('ok', File.absolute_path('./fileset/publisher/upload_pic.jpg'))
    
    attach_file('answer_video', Rails.root.join('samples', 'small.mp4'))

	click_button "Create Answer"

end

When (/I try to create a new Answers Content with Unsupported Video Type$/ ) do
	
	# fill_in 'answer_text_answer' , :with => "SAMPLE ANSWER"
	# fill_in 'answer_data_type' , :with => "Video"
	# #fill_in 'answer_video_answer' , :with => "1"
	# fill_in 'answer_question_id' , :with => "1"
	# fill_in 'answer_user_id' , :with => "1"

	#attach_file('ok', File.absolute_path('./fileset/publisher/upload_pic.jpg'))
    
    attach_file('answer_video', Rails.root.join('samples', 'quick.avi'))

	click_button "Create Answer"

end


When (/I try to create a new Answers Content without data type field$/ ) do
	
	#fill_in 'answer_data_type' , :with => "text"
	fill_in 'answer_question_id' , :with => "1"
	fill_in 'answer_user_id' , :with => "1"


	click_button "Create Answer"

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
Then (/^I should see the Video Answer page$/) do
	assert page.has_content?( "Video Answer" )

	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end

Then (/^I should see the new Award form page$/) do
	assert page.has_content?( "Award Information" )
end


Then (/^I should see that the Award is deleted$/) do
	assert page.has_content?( "User was successfully destroyed" )

	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end


# => Admins 								#

Then (/^I should see default weights$/) do
	
	assert_equal(find_field('admin_travel_metric').value, '0.23')
	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end


Then (/^the new weight should be saved$/) do
	assert page.has_content?( "Admin was successfully updated." )

	click_button "Ranking Metrics"

	assert_equal(find_field('admin_travel_metric').value, '0.5')
	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end

Then (/^I should see an applicant with a score$/) do
	
	@rows = page.all("//table[@id='applicant_table']/tbody/tr/td")
	#@data = @rows.find("td")
	assert_equal(@rows[1].text, "0.46")

	#expect(find_field('admin_travel_metric').value).to eq '0.5'
	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end

Then (/^I should see the new Admin page$/) do
	assert page.has_content?( "Admins" )

	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end

Then (/^I should see the Admin main page$/) do
	assert page.has_content?( "Ranking Metrics" )
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
	assert page.has_content?( "Education Information" )
end

Then (/^I should see that the Education Content is deleted$/) do
	assert page.has_content?( "User was successfully destroyed" )

	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end

# => Experience 							#
Then (/^I should see the new Experience page$/) do
	assert page.has_content?( "Experience Information" )

	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end

Then (/^I should see the new Experience form page$/) do
	assert page.has_content?( "Experience Information" )
end

Then (/^I should see that the Experience Content is deleted$/) do
	assert page.has_content?( "User was successfully destroyed" )

	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end

# => Extracurriculars 						#
Then (/^I should see the new Extracurriculars page$/) do
	assert page.has_content?( "Extracurricular Information" )

	#definition_list = find(:xpath, "//dl")
	#expect(find_field('user_first_name').value).to eq 'Beyonce'
end

Then (/^I should see the new Extracurricular form page$/) do
	assert page.has_content?( "Extracurricular Information" )
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

# => Question 								#

Then (/^I should see the new Question form page$/) do
	assert page.has_content?( "New Question" )
end

Then (/^I should see the new Questions page$/) do
	assert page.has_content?( "Question was successfully created" )

end

# => Answer 								#

Then (/^I should see the new Answer form page$/) do
	assert page.has_content?( "Video Answer" )
end

Then (/^I should see the new Answers page$/) do
	assert page.has_content?( "Answer was successfully created" )

end

Then (/^I should see the new Answers page with the Video name displayed$/) do
	# assert page.has_content?( "Answer was successfully created" )
	page.has_css?("a[contains(href, 'small.mp4')]")

end

Then (/^I should see the User Overview page$/) do
	# assert page.has_content?( "Answer was successfully created" )
	page.has_content?("Applicant Information")

end

# => General Error message #
Then (/^I should see an Error$/) do
	 assert page.has_css?('div.field_with_errors')
end

# => General Authentication message #
Then (/^I should see an Admin Login Page$/) do
	 assert page.has_content?('You need to sign in or sign up before continuing')
end