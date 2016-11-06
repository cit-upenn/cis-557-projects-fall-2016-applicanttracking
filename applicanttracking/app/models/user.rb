class User < ActiveRecord::Base

	validates :first_name, :presence => true
    validates :middle_name, :presence => true
    validates :last_name, :presence => true
	validates :dob, :presence => true
    validates :phone, :presence => true
    validates :email, :presence => true
    validates :street_address, :presence => true
    validates :city, :presence => true
    validates :state, :presence => true
    validates :country, :presence => true
    validates :zipcode, :presence => true
end
