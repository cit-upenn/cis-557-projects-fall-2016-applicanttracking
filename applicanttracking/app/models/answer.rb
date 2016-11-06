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

class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user

  validates :data_type, :presence => true
  validates :user, presence: {message: "This user doesn't exist"}
  validates :question, presence: {message: "This question doesn't exist"}

  def answer_present
  	if !text_answer.present? && !video_answer.present?
      errors.add(:text_answer, "There must be a video answer or text answer")
      errors.add(:video_answer, "There must be a video answer or text answer")
    end
  end
end
