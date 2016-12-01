class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
  skip_before_filter :verify_authenticity_token, :if => Proc.new { |c| c.request.format == 'application/json'}

  # GET / 
  # def login
  # 	redirect_to new_user_credential_session_path
  # end


  private
  def after_sign_out_path_for(resource_or_scope)
  	new_session_path(resource_name)
  end

  # def after_sign_in_path_for(resource_or_scope)
  # 	new_user_path
  # end

end
