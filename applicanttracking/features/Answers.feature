Feature: Answers page

	As a User
	So that I can keep track Answer related information
	I want to create new Answer Content

	Background:
		Given a Dummy User for Testing
		Given a Dummy Question for Testing
		Given I need to Sign in as User


	Scenario: Click a new Answers button 
		Given that I am on the Answers Page
		When I click new Answer button 
		Then I should see the new Answer form page

	Scenario: Create a new Answers Content
		Given that I am on the new Answers Page
		When I try to create a new Answers Content
		Then I should see the new Answers page

	Scenario: Create a new Answers Content without answer field
		Given that I am on the new Answers Page
		When I try to create a new Answers Content without data type field
		Then I should see an Error

    Scenario: Upload a Video 
    	Given that I am on the new Answers Page
		When I try to create a new Answers Content with Video 
		Then I should see the new Answers page with the Video name displayed

	Scenario: Upload a Unsupported Video Type
		Given that I am on the new Answers Page
		When I try to create a new Answers Content with Unsupported Video Type
		Then I should see an Error
