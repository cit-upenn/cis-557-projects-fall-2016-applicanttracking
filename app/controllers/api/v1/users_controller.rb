

class Api::V1::UsersController < Api::V1::ApiController
  if Rails.configuration.enable_devise == true
    before_action :authenticate_user_credential!
  end 
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  respond_to :json, :html

  # GET /users
  # GET /users.json
  def index

    # local variable suffices because we dont use view and we dont 
    #   need to pass anything to a view.
    users = User.all
    render json: users.to_json

  end

  # GET /users/1
  # GET /users/1.json
  def show
    user = User.where(params[:id])

    if user.empty?
      #format.html { notice: 'User with id #{params[:id]} does not exist.' }
      render json: { message: "User with id #{params[:id]} does not exist", status: :not_found }
    else
      #format.html { notice: 'User was successfully created.' }
      render json: user.to_json
    end

  end

  # GET /users/1/edit
  def edit
    # TO DO...
  end

  # POST /users
  # POST /users.json
  def create
    user = User.new(user_params)

    respond_to do |format|
      if user.save
        #format.html { notice: 'User was successfully created.' }
        format.json { render json: user, status: :created }
      else
        #format.html { notice: 'Failed to create User.' }
        format.json { render json: {:errors => user.errors}, status: :bad_request }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update

    #Use class variable here, since we get 'set_user' to find user by id.

    respond_to do |format|
      if @user.update(user_params)
        #format.html { notice: 'User was successfully updated.' }
        format.json { render json: @user, status: :ok }
      else
        #format.html { notice: 'Failed to update User.' }
        format.json { render json: {:errors => @user.errors}, status: :bad_request }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      #format.html { notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      if User.exists?(params[:id])
        @user = User.find(params[:id])
      else
        render json: {:errors => "User doesn't exist"}, status: :bad_request
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      if request.format == 'application/json'
        params.permit(:first_name, :middle_name, :last_name, :dob, :phone, :email, :street_address, :city, :state, :country, :zipcode, :submitted)
      else
        params.require(:user).permit(:first_name, :middle_name, :last_name, :dob, :phone, :email, :street_address, :city, :state, :country, :zipcode, :submitted)
      end
    end
end