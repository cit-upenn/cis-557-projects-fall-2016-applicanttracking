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
#  travel_score            :flaot
#  sport_score             :float
#  personal_projects_score :float
#  voluntary_score         :float
#  achievements_score      :float
#  passion_score           :float
#  study_score             :float
#  work_score              :float
#  self_reflection_score   :float
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
