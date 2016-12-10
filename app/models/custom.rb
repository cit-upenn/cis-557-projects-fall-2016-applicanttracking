# == Schema Information
#
# Table name: customs
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  data       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  datatype   :string
#

class Custom < ActiveRecord::Base
	belongs_to :user

	validates :datatype, :presence => true
	validates :user, presence: {message: "This user doesn't exist"}
	validates :data, :presence => true
end
