# == Schema Information
#
# Table name: users
#
#  id             :integer          not null, primary key
#  first_name     :string
#  middle_name    :string
#  last_name      :string
#  dob            :date
#  phone          :integer
#  email          :string
#  street_address :string
#  city           :string
#  state          :string
#  country        :string
#  zipcode        :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class User < ActiveRecord::Base
	has_many :experiences
	has_many :educations
	has_many :extracurriculars
	has_many :awards
	has_many :githubs
	has_many :linkedins
end
