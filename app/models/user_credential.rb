# == Schema Information
#
# Table name: user_credentials
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

class UserCredential < ActiveRecord::Base
  # Include default devise modules.
  # devise :database_authenticatable, :registerable,
  #         :recoverable, :rememberable, :trackable, :validatable,
  #         :confirmable, :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  has_one :user
  has_many :awards, through: :user
  has_many :educations, through: :user
  has_many :experiences, through: :user
  has_many :extracurriculars, through: :user
  has_many :answers, through: :user

end
