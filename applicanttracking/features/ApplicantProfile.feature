Feature: Applicant Profile page

	As a User
	So that I can keep track my Applicant Profile Information
	I want to create a new Applicant Profile

	Scenario: Create a new Applicant Profile
		Given that I am on the New Users Page
		When I try to create a new Applicant Profile
		Then I should see the new Applicant Profile page

	Scenario: Create a new Applicant Profile without name field
		Given that I am on the New Users Page
		When I try to create a new Applicant Profile without name field
		Then I should see an Error
