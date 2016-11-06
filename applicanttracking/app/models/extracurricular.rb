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

class Extracurricular < ActiveRecord::Base
  belongs_to :user
  validate :validate_start, :validate_end

  validates :start, :presence => true
  validates :end_date, :presence => true
  validates :organization, :presence => true
  validates :position, :presence => true
  validates :description, :presence => true
  validates :user, presence: {message: "This user doesn't exist"}

  def validate_start
    if start.present? && start > Date.today || start.present? && end_date.present? && start > end_date
      errors.add(:start, "start date must be before end date and before today")
    end
  end

  def validate_end
    if end_date.present? && end_date > Date.today || start.present? && end_date.present? && start > end_date
      errors.add(:end_date, "end date must be after start date and before today")
    end
  end
end
