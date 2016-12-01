# == Schema Information
#
# Table name: questions
#
#  id            :integer          not null, primary key
#  question_type :string
#  prompt        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
