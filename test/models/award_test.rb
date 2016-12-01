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

require 'test_helper'

class AwardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
