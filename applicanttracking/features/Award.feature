Feature: Awards page

	As a User
	So that I can keep track Award related information
	I want to create new Award Content

	Scenario: Create a new Award Content
		Given that I am on the Awards Page
		When I try to create a new Award 
		Then I should see the new Award page

	Scenario: Create a new Award Content without name field
		Given that I am on the Awards Page
		When I try to create a new Award Without name field
		Then I should see an Error
