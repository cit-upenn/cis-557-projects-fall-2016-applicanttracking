Feature: Education page

	As a User
	So that I can keep track Education related information
	I want to create new Education Content

	Scenario: Click a new Education button 
		Given that I am on the Education Page
		When I click new Education button 
		Then I should see the new Education form page

	Scenario: Create a new Education Content
		Given that I am on the New Education Page
		When I try to create a new Education Content 
		Then I should see the new Education page

	Scenario: Create a new Education Content without current field
		Given that I am on the New Education Page
		When I try to create a new Education Content without current field
		Then I should see an Error
