Feature: Awards page

	As a User
	So that I can keep track Award related information
	I want to create new Award Content

	Background:
		Given a Dummy User for Testing


	Scenario: Click a new Award button 
		Given that I am on the Awards Page
		When I click new Award button 
		Then I should see the new Award form page

	Scenario: Create a new Award Content
		Given that I am on the New Awards Page
		When I try to create a new Award 
		Then I should see the new Award page

	Scenario: Create a new Award Content without name field
		Given that I am on the New Awards Page
		When I try to create a new Award Without name field
		Then I should see an Error
