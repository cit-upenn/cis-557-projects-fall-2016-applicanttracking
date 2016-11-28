Feature: Githubs page

	As a User
	So that I can keep track Githubs related information
	I want to create new Githubs Content

	Background:
		Given I need to Sign in as User

	Scenario: Click a new Github button 
		Given that I am on the Githubs Page
		When I click new Github button 
		Then I should see the new Github form page

	Scenario: Create a new Githubs Content
		Given that I am on the New Githubs Page
		When I try to create a new Githubs Content 
		Then I should see the new Githubs page

	Scenario: Create a new Githubs Content without url
		Given that I am on the New Githubs Page
		When I try to create a new Githubs Content without url
		Then I should see an Error