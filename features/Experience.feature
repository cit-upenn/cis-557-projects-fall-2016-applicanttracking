Feature: Experiences page

	As a User
	So that I can keep track Experience related information
	I want to create new Experience Content

	Background:
		Given a Dummy User for Testing
		Given I need to Sign in as User

	Scenario: I should see the new Experience Page 
		Given that I am on the Experience Page
		Then I should see the new Experience form page

	Scenario: Create a new Experience Content
		Given that I am on the New Experience Page
		When I try to create a new Experience Content 
		Then I should see the new Extracurriculars page

	Scenario: Create a new Experience Content without company field
		Given that I am on the New Experience Page
		When Create a new Experience Content without company field
		Then I should see an Error

	Scenario: Create a new Experience Content with an invalid start date
		Given that I am on the New Experience Page
		When I try to create a new Experience Content with an invalid start date
		Then I should see an Error

	Scenario: Create a new Experience Content with an invalid end date
		Given that I am on the New Experience Page
		When I try to create a new Experience Content with an invalid end date
		Then I should see an Error