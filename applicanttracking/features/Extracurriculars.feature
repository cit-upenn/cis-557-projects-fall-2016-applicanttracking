Feature: Extracurriculars page

	As a User
	So that I can keep track Extracurriculars related information
	I want to create new Extracurriculars Content

	Scenario: Create a new Extracurriculars Content
		Given that I am on the Extracurriculars Page
		When I try to create a new Extracurriculars Content
		Then I should see the new Extracurriculars page

	Scenario: Create a new Extracurriculars Content without current field
		Given that I am on the Extracurriculars Page
		When I try to create a new Extracurriculars Content without current field
		Then I should see an Error