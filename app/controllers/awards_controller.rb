class AwardsController < AwardsBaseController
  if Rails.configuration.enable_devise == true
    before_action :authenticate_user_credential!
  end 
  before_action :set_award, only: [:show, :edit, :update, :destroy]

end
