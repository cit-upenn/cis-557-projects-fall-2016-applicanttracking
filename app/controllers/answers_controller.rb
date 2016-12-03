class AnswersController < AnswersBaseController
  if Rails.configuration.enable_devise == true
    before_action :authenticate_user_credential!
  end 
  before_action :set_answer, only: [:show, :edit, :update, :destroy, :upload]
  skip_before_filter :verify_authenticity_token

 
end
