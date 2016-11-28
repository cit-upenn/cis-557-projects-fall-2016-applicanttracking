Feature: Education page

	As a User
	So that I can keep track Education related information
	I want to create new Education Content

	Background:
		Given a Dummy User for Testing
		Given I need to Sign in as User

	Scenario: Click a new Education button 
		Given that I am on the Education Page
		When I click new Education button 
		Then I should see the new Education form page

	Scenario: Create a new Education Content
		Given that I am on the New Education Page
		When I try to create a new Education Content 
		Then I should see the new Education page

	Scenario: Create a new Education Content without gpa field
		Given that I am on the New Education Page
		When I try to create a new Education Content without gpa field
		Then I should see an Error
