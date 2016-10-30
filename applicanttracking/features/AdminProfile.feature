Feature: Admins page

	As a User
	So that I can keep track Admin related information
	I want to create a new Admin Profile

	Scenario: Create a new Admin Profile
		Given that I am on the Admins Page
		When I try to create a new Admin Profile
		Then I should see the new Admin page

	Scenario: Create a new Admin Profile without name field
		Given that I am on the Admins Page
		When I try to create a new Admin Profile without name field
		Then I should see an Error
