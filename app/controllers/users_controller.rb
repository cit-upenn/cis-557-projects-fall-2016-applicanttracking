#class UsersController < ApplicationController
class UsersController < UsersBaseController
  if Rails.configuration.enable_devise == true
    before_action :authenticate_user_credential!
  end 
  before_action :set_user, only: [:show, :edit, :update, :destroy]

end