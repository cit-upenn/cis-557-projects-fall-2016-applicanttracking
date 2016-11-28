Feature: Questions page

	As a User
	So that I can keep track Question related information
	I want to create new Question Content

	Background:
		Given I need to Sign in as User

	Scenario: Click a new Questions button 
		Given that I am on the Questions Page
		When I click new Question button 
		Then I should see the new Question form page

	Scenario: Create a new Questions Content
		Given that I am on the new Questions Page
		When I try to create a new Questions Content
		Then I should see the new Questions page

	Scenario: Create a new Questions Content without prompt field
		Given that I am on the new Questions Page
		When I try to create a new Questions Content without prompt field
		Then I should see an Error