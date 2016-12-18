# == Schema Information
#
# Table name: admin_credentials
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  provider               :string           default("email"), not null
#  uid                    :string           default(""), not null
#  tokens                 :text
#

class AdminCredential < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  include DeviseTokenAuth::Concerns::User
  #include DeviseTokenAuth::Concerns::Admin
  
  validates :travel_metric, :numericality => {greater_than_or_equal_to: 0}
  validates :sport_metric, :numericality => {greater_than_or_equal_to: 0}
  validates :personal_projects_metric, :numericality => {greater_than_or_equal_to: 0}
  validates :voluntary_metric, :numericality => {greater_than_or_equal_to: 0}
  validates :achievements_metric, :numericality => {greater_than_or_equal_to: 0}
  validates :passion_metric, :numericality => {greater_than_or_equal_to: 0}
  validates :study_metric, :numericality => {greater_than_or_equal_to: 0}
  validates :work_metric, :numericality => {greater_than_or_equal_to: 0}
  validates :self_reflection_metric, :numericality => {greater_than_or_equal_to: 0}
end
