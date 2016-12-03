class AdminsController < AdminsBaseController 
  if Rails.configuration.enable_devise == true
    before_action :authenticate_admin_credential!
  end 
  before_action :set_admin, only: [:show, :edit, :update, :destroy]

end
