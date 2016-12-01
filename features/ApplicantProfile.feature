Feature: Applicant Profile page

	As a User
	So that I can keep track my Applicant Profile Information
	I want to create a new Applicant Profile

	Background:
		Given I need to Sign in as User

	Scenario: Click a new Applicant button 
		Given that I am on the Users Page
		When I click new Users button 
		Then I should see the new Applicant form page

	Scenario: Create a new Applicant Profile
		Given that I am on the New Users Page
		When I try to create a new Applicant Profile
		Then I should see the new Applicant Profile page

	Scenario: Create a new Applicant Profile without name field
		Given that I am on the New Users Page
		When I try to create a new Applicant Profile without name field
		Then I should see an Error
