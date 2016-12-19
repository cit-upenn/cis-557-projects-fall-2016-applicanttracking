Feature: Awards page

	As a User
	So that I can keep track Award related information
	I want to create new Award Content

	Background:
		Given a Dummy User for Testing
		Given I need to Sign in as User


	Scenario: See the new Award Page
		Given that I am on the Awards Page 
		Then I should see the new Award form page

	Scenario: Create a new Award Content
		Given that I am on the New Awards Page
		When I try to create a new Award 
		Then I should see the Video Answer page

	Scenario: Create a new Award Content without name field
		Given that I am on the New Awards Page
		When I try to create a new Award Without name field
		Then I should see an Error

	Scenario: Create a new Award Content with an invalid date
		Given that I am on the New Awards Page
		When I try to create a new Award with an invalid date
		Then I should see an Error
