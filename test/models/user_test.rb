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

#  id                 :integer          not null, primary key
#  first_name         :string
#  middle_name        :string
#  last_name          :string
#  dob                :date
#  phone              :integer
#  email              :string
#  street_address     :string
#  city               :string
#  state              :string
#  country            :string
#  zipcode            :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  submitted          :boolean
#  user_credential_id :integer
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
