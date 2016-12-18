# == Schema Information
#
# Table name: admin_credentials
#
#  id                       :integer          not null, primary key
#  email                    :string           default(""), not null
#  encrypted_password       :string           default(""), not null
#  reset_password_token     :string
#  reset_password_sent_at   :datetime
#  remember_created_at      :datetime
#  sign_in_count            :integer          default(0), not null
#  current_sign_in_at       :datetime
#  last_sign_in_at          :datetime
#  current_sign_in_ip       :string
#  last_sign_in_ip          :string
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  provider                 :string           default("email"), not null
#  uid                      :string           default(""), not null
#  tokens                   :text
#  travel_metric            :float            default(0.23)
#  sport_metric             :float            default(0.03)
#  personal_projects_metric :float            default(0.23)
#  voluntary_metric         :float            default(0.08)
#  achievements_metric      :float            default(0.06)
#  passion_metric           :float            default(0.06)
#  study_metric             :float            default(0.11)
#  work_metric              :float            default(0.11)
#  self_reflection_metric   :float            default(0.11)
#

require 'test_helper'

class AdminCredentialTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
