# == Schema Information
#
# Table name: extracurriculars
#
#  id           :integer          not null, primary key
#  start        :date
#  organization :string
#  current      :boolean
#  position     :string
#  description  :string
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  end_date     :date
#

require 'test_helper'

class ExtracurricularTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
