# == Schema Information
#
# Table name: admins
#
#  id             :integer          not null, primary key
#  api_auth_token :string
#  email          :string
#  first_name     :string
#  middle_name    :string
#  last_name      :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
