# == Schema Information
#
# Table name: educations
#
#  id         :integer          not null, primary key
#  start      :date
#  current    :boolean
#  degree     :string
#  school     :string
#  gpa        :float
#  major      :string
#  minor      :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  end_date   :date
#

class Education < ActiveRecord::Base
  belongs_to :user
  validate :validate_start, :validate_end
  
  validates :start, :presence => true
  validates :end_date, :presence => true
  validates :degree, :presence => true
  validates :school, :presence => true
  validates :gpa, :presence => true, :numericality => {:greater_than => 0.0, :less_than_or_equal_to => 4.0}
  validates :major, :presence => true
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
