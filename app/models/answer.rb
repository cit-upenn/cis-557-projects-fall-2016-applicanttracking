# == Schema Information
#
# Table name: answers
#
#  id                 :integer          not null, primary key
#  text_answer        :text
#  data_type          :string
#  question_id        :integer
#  user_id            :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  video_file_name    :string
#  video_content_type :string
#  video_file_size    :integer
#  video_updated_at   :datetime
#

class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user

  validates :data_type, :presence => true
  validates :user, presence: {message: "This user doesn't exist"}
  validates :question, presence: {message: "This question doesn't exist"}

  has_attached_file :video
  validates_attachment :video, :presence => true, content_type: { content_type: ["video/mp4"] }
end
