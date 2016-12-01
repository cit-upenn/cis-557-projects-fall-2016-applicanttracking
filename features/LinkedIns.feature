Feature: LinkedIns page

	As a User
	So that I can keep track LinkedIns related information
	I want to create new LinkedIns Content

	Background:
		Given a Dummy User for Testing
		Given I need to Sign in as User
	
	Scenario: Click a new LinkedIn button 
		Given that I am on the LinkedIns Page
		When I click new LinkedIn button 
		Then I should see the new LinkedIn form page

	Scenario: Create a new LinkedIns Content
		Given that I am on the New LinkedIns Page
		When I try to create a new LinkedIns Content
		Then I should see the new LinkedIns page

	Scenario: Create a new LinkedIns Content without url
		Given that I am on the New LinkedIns Page
		When I try to create a new LinkedIns Content without url
		Then I should see an Error
