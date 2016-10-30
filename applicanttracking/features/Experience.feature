Feature: Experiences page

	As a User
	So that I can keep track Experience related information
	I want to create new Experience Content

	Scenario: Create a new Experience Content
		Given that I am on the Experience Page
		When I try to create a new Experience Content 
		Then I should see the new Experience page

	Scenario: Create a new Experience Content without current field
		Given that I am on the Experience Page
		When Create a new Experience Content without current field 
		Then I should see an Error