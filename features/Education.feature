Feature: Education page

	As a User
	So that I can keep track Education related information
	I want to create new Education Content

	Background:
		Given a Dummy User for Testing
		Given I need to Sign in as User

	Scenario: See the Education button 
		Given that I am on the Education Page 
		Then I should see the new Education form page

	Scenario: Create a new Education Content
		Given that I am on the New Education Page
		When I try to create a new Education Content 
		Then I should see the new Experience page

	Scenario: Create a new Education Content without gpa field
		Given that I am on the New Education Page
		When I try to create a new Education Content without gpa field
		Then I should see an Error

	Scenario: Create a new Education Content with an invalid start date
		Given that I am on the New Education Page
		When I try to create a new Education Content with an invalid start date
		Then I should see an Error

	Scenario: Create a new Education Content with an invalid end date
		Given that I am on the New Education Page
		When I try to create a new Education Content with an invalid end date
		Then I should see an Error
