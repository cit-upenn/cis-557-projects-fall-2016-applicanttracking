Feature: LinkedIns page

	As a User
	So that I can keep track LinkedIns related information
	I want to create new LinkedIns Content

	Scenario: Create a new LinkedIns Content
		Given that I am on the LinkedIns Page
		When I try to create a new LinkedIns Content 
		Then I should see the new LinkedIns page

	Scenario: Create a new LinkedIns Content without url
		Given that I am on the LinkedIns Page
		When I try to create a new LinkedIns Content without url
		Then I should see an Error
