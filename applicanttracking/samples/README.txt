We currently have 10 models: admin, answer, award, education, experience, extracurricular, github, linkedin, question, user

The user and admin models correspond to the users of our application that can login with their credentials. The user corresponds to the applicant and the admin corresponds to Daimler HR that can view applicants and their applications. The question, answer, award, education, experience, extracurricular, github, linkedin models roughly correspond to fields in the application form that the applicant fills out.

1. User - represents an applicant
Fields: 
	The user has multiple fields that correspond to basic information about the applicant. These fields include: first_name, middle_name    last_name, dob, phone, email, street_address, city, state, country, zipcode, and a boolean called submitted that tells whether the application has been submitted. We didn't want to have everything about the user in this table because there would be too many columns to keep track of.

Validations: 
	Each of the fields mentioned above are required because they're all the necessary basic information for each applicant.

Associations: 
	This user has_many awards, experiences, extracurriculars, educations, and answers that correspond to other tables that store the corresponding information. Each of these relationships represent a different section of the application form and so it made sense to logically split up the tables this way. We decided on a has many relationship because each user/applicant could have multiple awards, experiences, extracurriculars, education, and answer information. 

2. Education - represents a applicant's (current/past) education.
	Fields: 
		Education fields include: start and end_date dates, degree, school, gpa, major, minor, created_at, updated_at datetimes and a current boolean to indicate whether the listed education is the applicant's current place of education.  

	Validations:
		We validate the start and end_dates so that they are dates that make sense: 1) the start date should be before the current date and also before the end_date date, 2) the end_date should be before the current date and after the start date. We also check that the value of the gpa is within the range 0.0 to 4.0. Furthermore, we deemed the rest of the fields to be necessary for an applicant's education except for the applicants minor and the "current" boolean because it is possible for the listed education to be a past education. 

	Associations:
		belongs to a user, per the has_many relationship in users.


3. Experience - represents a applicant's work experience item
	Fields:
		Fields include: start and end_date dates, title, company, description, and current boolean. 
	
	Validations:
		We validate the start and end_dates so that they are dates that make sense: 1) the start date should be before the current date and also before the end_date date, 2) the end_date should be before the current date and after the start date. Title, company, description, should be present to describe the applicants work experience.

	Associations:
		Belongs to a user, per the has_many relationship in users.

4. Extracurricular - represents an applicant's extracurricular experience
	Fields:
		Fields include start and end_date dates, organization, position, description, and current boolean to indicate if the applicant is currently engaged in the extracurricular activity.
	
	Validations:
		We validate the start and end_dates so that they are dates that make sense: 1) the start date should be before the current date and also before the end_date date, 2) the end_date should be before the current date and after the start date. Also, organization, position, description should be present as they are necessary to describe the extracurricular activity the applicant participated in.
	
	Associations:
		Belongs to a user, per the has_many relationship in users.

5. Award - represents an applicant's awards
	Fields:
		Fields include name, description and date (when the award was given).

	Validations:
		We validate the date so that it makes sense: 1) the start date should be before the current date. Also, the name and description must also exist as they describe the award. Finally, the user_id must exist since this award belongs to a user.

	Associations:
		Belongs to a user, per the has_many relationship in users.

6. Answer- represents a user's answer to a question
	Fields:
		fields includes text_answer, data_type, video_answer, question_id, user_id

	Validations:
		One of either a text_answer or a video_answer should exist as the answer content, data_type must be present as it is also important to distinguish the type of the answer content; furthermore, the question_id and user_id that this answer belongs to should exist.

	Associations:
		Belongs to a question in a one-to-many relationship since a question can have many answers, belongs to a user in a one-to many relationship because a user can have many answers to questions.

7. Question- represents a question
	Fields:
		Fields include: prompt and question type.

	Validations:
		Must have both fields as the question would be incomplete without them.

	Associations:
		Has one-to-many relationship with answers since many answers can be associated with it.

8. LinkedIn- represents a linkedIn account associated with the user
	Fields:
		Fields include linkedIn path, username, user_id

	Validations:
		user_id must exist. and the linkedIn path must be present so that information can be gathered from it later with API calls.

	Associations:
		Belongs to a user in a one-to-one relationship.

9. Github - represent an applicant's github account
	Fields:
		Fields include: github path, username, and user_id
	Validations:
		user_id must exist and the github path must also be present so that information could potentially be gather from it later with API calls.

	Associations:
		Belongs to a user in a one-to-one relationship.

10. Admin - represents an admin user (i.e. HR) 
	Fields:
		Fields include api_auth_token, email, first_name, last_name, middle_name. 
	
	Validations:
		first_name, last_name and email are necessary as the minimum for an account. the api_auth_token is not required as this can be updated later when the admin gains access to our API.	

	Associations:
		none.