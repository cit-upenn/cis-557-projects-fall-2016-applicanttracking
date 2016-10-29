# == Schema Information
#
# Table name: experiences
#
#  id          :integer          not null, primary key
#  start       :date
#  end         :date
#  current     :boolean
#  title       :string
#  company     :string
#  description :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Experience < ActiveRecord::Base
  belongs_to :user
end
