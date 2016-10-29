# == Schema Information
#
# Table name: extracurriculars
#
#  id           :integer          not null, primary key
#  start        :date
#  end          :date
#  organization :string
#  current      :boolean
#  position     :string
#  description  :string
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Extracurricular < ActiveRecord::Base
  belongs_to :user
end
