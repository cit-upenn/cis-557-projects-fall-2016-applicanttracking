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

class Question < ActiveRecord::Base
	has_many :answers

	validates :question_type, :presence => true
	validates :prompt, :presence => true
end
