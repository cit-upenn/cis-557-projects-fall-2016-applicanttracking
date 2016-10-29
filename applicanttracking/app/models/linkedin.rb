# == Schema Information
#
# Table name: linkedins
#
#  id         :integer          not null, primary key
#  path       :string
#  username   :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Linkedin < ActiveRecord::Base
  belongs_to :user
end
