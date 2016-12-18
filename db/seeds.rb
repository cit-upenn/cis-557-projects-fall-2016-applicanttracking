# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.create( question_type: 'sample question' , prompt: 'what is your favorite activity?' )
Question.create( question_type: 'another sample question' , prompt: 'what is your favorite activity?' )
Question.create( question_type: 'more sample question' , prompt: 'what is your favorite activity?' )