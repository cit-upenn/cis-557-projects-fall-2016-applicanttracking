# == Schema Information
#
# Table name: awards
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  date        :date
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Award < ActiveRecord::Base
  belongs_to :user

  validates :name, :presence => true
  validates :user, presence: {message: "This user doesn't exist"}
  validates :description, :presence => true
  validates :date, :presence => true
end
