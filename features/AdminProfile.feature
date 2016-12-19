Feature: Admins page

	As a User
	So that I can keep track Admin related information
	I want to create a new Admin Profile

    Background:
        Given a Dummy User with a score for Testing
		Given I need to Sign in as Admin

	Scenario: Display main Admin page 
		Given that I am on the Admins Page 
		Then I should see the Admin main page

    Scenario: The Admin has default Scoring Weights
		Given that I am on the Admins Page
		When I check the Admin Scoring Weights
		Then I should see default weights

	Scenario: Update the Admin Scoring Weights
		Given that I am on the Admins Page
		When I update the Admin Scoring Weights
		Then the new weight should be saved

	Scenario: Display Applicants with a calculated Rank
		Given that I am on the Admins Page
		Then I should see an applicant with a score
