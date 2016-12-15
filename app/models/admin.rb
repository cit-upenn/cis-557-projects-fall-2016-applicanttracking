# == Schema Information
#
# Table name: admins
#
#  id                       :integer          not null, primary key
#  api_auth_token           :string
#  email                    :string
#  first_name               :string
#  middle_name              :string
#  last_name                :string
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#  encrypted_password       :string           default(""), not null
#  reset_password_token     :string
#  reset_password_sent_at   :datetime
#  remember_created_at      :datetime
#  sign_in_count            :integer          default(0), not null
#  current_sign_in_at       :datetime
#  last_sign_in_at          :datetime
#  current_sign_in_ip       :string
#  last_sign_in_ip          :string
#  travel_metric            :float
#  sport_metric             :float
#  personal_projects_metric :float
#  voluntary_metric         :float
#  achievements_metric      :float
#  passion_metric           :float
#  study_metric             :float
#  work_metric              :float
#  self_reflection_metric   :float
#

class Admin < ActiveRecord::Base

	validates :first_name, :presence => true
	validates :last_name, :presence => true
	validates :email, :presence => true
  #validates :passion_metric, 
end
