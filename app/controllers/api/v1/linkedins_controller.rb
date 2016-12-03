class Api::V1::LinkedinsController < LinkedinsBaseController
  
  if Rails.configuration.enable_devise == true
    before_action :authenticate_user_credential!
  end 
  
  before_action :set_linkedin, only: [:show, :edit, :update, :destroy]
  include DeviseTokenAuth::Concerns::SetUserByToken
  
end