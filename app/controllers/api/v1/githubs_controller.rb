class Api::V1::GithubsController < GithubsBaseController
  
  if Rails.configuration.enable_devise == true
    before_action :authenticate_user_credential!
  end 
  
  before_action :set_github, only: [:show, :edit, :update, :destroy]
  include DeviseTokenAuth::Concerns::SetUserByToken
  
end