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
#  submitted      :boolean
#

class User < ActiveRecord::Base
    has_many :answers
    has_many :awards
    has_many :educations
    has_many :experiences
    has_many :extracurriculars

	validates :first_name, :presence => true
    validates :last_name, :presence => true
	validates :dob, :presence => true
    validates :phone, :presence => true
    validates :email, :presence => true
    validates :street_address, :presence => true
    validates :city, :presence => true
    validates :state, :presence => true
    validates :country, :presence => true
    validates :zipcode, :presence => true
    validates :submitted, :presence => true
end
