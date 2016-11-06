# == Schema Information
#
# Table name: answers
#
#  id           :integer          not null, primary key
#  text_answer  :text
#  data_type    :string
#  video_answer :binary
#  question_id  :integer
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
