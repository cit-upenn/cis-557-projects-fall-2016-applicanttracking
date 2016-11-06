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

class Admin < ActiveRecord::Base

	validates :first_name, :presence => true
end
