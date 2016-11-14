Feature: Experiences page

	As a User
	So that I can keep track Experience related information
	I want to create new Experience Content

	Background:
		Given a Dummy User for Testing


	Scenario: Click a new Experience button 
		Given that I am on the Experience Page
		When I click new Experience button 
		Then I should see the new Experience form page

	Scenario: Create a new Experience Content
		Given that I am on the New Experience Page
		When I try to create a new Experience Content 
		Then I should see the new Experience page

	Scenario: Create a new Experience Content without company field
		Given that I am on the New Experience Page
		When Create a new Experience Content without company field
		Then I should see an Error