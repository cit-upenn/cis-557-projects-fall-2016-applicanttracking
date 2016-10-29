Feature: Applicant Profile page

	As a User
	So that I can keep track my Applicant Profile Information
	I want to create a new Applicant Profile

	Scenario: Create a new Applicant Profile
		Given that I am on the New Users Page
		When I try to create a new Applicant Profile
		Then I should see the new Applicant Profile page

#	Scenario: Login to existing Applicant Profile
#		Given that I am on the Users Page
#		When I try to login to existing Applicant Profile
#		Then I should see the existing Applicant Profile page

	Scenario: Delete an existing Applicant Profile
		Given that I am on the Users Page
		When I try to delete an existing Applicant Profile
		Then I should see that the Applicant Profile is deleted