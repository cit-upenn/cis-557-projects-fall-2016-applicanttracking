# == Schema Information
#
# Table name: experiences
#
#  id          :integer          not null, primary key
#  start       :date
#  current     :boolean
#  title       :string
#  company     :string
#  description :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  end_date    :date
#

require 'test_helper'

class ExperienceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
