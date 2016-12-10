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

require 'test_helper'

class CustomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
