# == Schema Information
#
# Table name: githubs
#
#  id         :integer          not null, primary key
#  path       :string
#  username   :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Github < ActiveRecord::Base
  belongs_to :user
  validates :path, :presence => true
end
