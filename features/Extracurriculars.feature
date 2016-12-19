Feature: Extracurriculars page

	As a User
	So that I can keep track Extracurriculars related information
	I want to create new Extracurriculars Content

	Background:
		Given a Dummy User for Testing
		Given I need to Sign in as User

	Scenario: See the a new Extracurricular page 
		Given that I am on the Extracurriculars Page 
		Then I should see the new Extracurricular form page

	Scenario: Create a new Extracurriculars Content
		Given that I am on the New Extracurriculars Page
		When I try to create a new Extracurriculars Content
		Then I should see the new Award form page

	Scenario: Create a new Extracurriculars Content without position field
		Given that I am on the New Extracurriculars Page
		When I try to create a new Extracurriculars Content without position field
		Then I should see an Error

	Scenario: Create a new Extracurriculars Content with an invalid start date
		Given that I am on the New Extracurriculars Page
		When I try to create a new Extracurriculars Content with an invalid start date
		Then I should see an Error

	Scenario: Create a new Extracurriculars Content with an invalid end date
		Given that I am on the New Extracurriculars Page
		When I try to create a new Extracurriculars Content with an invalid end date
		Then I should see an Error