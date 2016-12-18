# == Schema Information
#
# Table name: users
#
#  id                      :integer          not null, primary key
#  first_name              :string
#  middle_name             :string
#  last_name               :string
#  dob                     :date
#  phone                   :integer
#  email                   :string
#  street_address          :string
#  city                    :string
#  state                   :string
#  country                 :string
#  zipcode                 :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  submitted               :boolean
#  user_credential_id      :integer
#  travel_score            :flaot            default("0")
#  sport_score             :float            default(0.0)
#  personal_projects_score :float            default(0.0)
#  voluntary_score         :float            default(0.0)
#  achievements_score      :float            default(0.0)
#  passion_score           :float            default(0.0)
#  study_score             :float            default(0.0)
#  work_score              :float            default(0.0)
#  self_reflection_score   :float            default(0.0)
#


class User < ActiveRecord::Base
    has_many :answers
    has_many :awards
    has_many :educations
    has_many :experiences
    has_many :extracurriculars
    has_many :customs
    belongs_to :user_credential

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
end
