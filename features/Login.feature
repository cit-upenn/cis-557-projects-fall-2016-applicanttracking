Feature: Devise Log in system

	As a User
	So I can have to log in to in order to access my profile


	Scenario: Sign in into Admin Page with Admin Credentials
	    Given I need to Sign in as Admin
		Given that I am on the New Admins Page
		Then I should see the new Admin page

	Scenario: Sign in into Users profile with User Credentials
	    Given I need to Sign in as User
		Given that I am on the New Users Page
		When I try to create a new Applicant Profile
		Then I should see the new Applicant Profile page

	Scenario: Cant access Admin Page while signed in with User Credentials
		Given I need to Sign in as User
		Given that I am on the New Admins Page
		Then I should see an Admin Login Page
