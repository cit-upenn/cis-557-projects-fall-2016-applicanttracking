We currently have 10 models: admin, answer, award, education, experience, extracurricular, github, linkedin, question, user

The user and admin models correspond to the users of our application that can login with their credentials. The user corresponds to the applicant and the admin corresponds to Daimler HR that can view applicants and their applications. The question, answer, award, education, experience, extracurricular, github, linkedin models roughly correspond to fields in the application form that the applicant fills out.

User - represents an applicant
Fields: The user has multiple fields that correspond to basic information about the applicant. These fields include: first_name, middle_name    last_name, dob, phone, email, street_address, city, state, country, zipcode, and a boolean called submitted that tells whether the application has been submitted. We didn't want to have everything about the user in this table because there would be too many columns to keep track of.
Validations: Each of the fields mentioned above are required because they're all the necessary basic information for each applicant.
Associations: This user has_many awards, experiences, extracurriculars, educations, and answers that correspond to other tables that store the corresponding information. Each of these relationships represent a different section of the application form and so it made sense to logically split up the tables this way. We decided on a has many relationship because each user/applicant could have multiple awards, experiences, extracurriculars, education, and answer information. 

Education
Fields:
Validations:
Associations:

Experience
Fields:
Validations:
Associations:

Extracurricular
Fields:
Validations:
Associations:

Award
Fields:
Validations:
Associations: