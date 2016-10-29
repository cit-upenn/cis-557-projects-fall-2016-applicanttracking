# == Schema Information
#
# Table name: educations
#
#  id         :integer          not null, primary key
#  start      :date
#  end        :date
#  current    :boolean
#  degree     :string
#  school     :string
#  gpa        :float
#  major      :string
#  minor      :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Education < ActiveRecord::Base
  belongs_to :user
end
