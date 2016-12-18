class UsersBaseController < ApplicationController

  # GET /users
  # GET /users.json
  def index
    respond_to do |format|
      format.html { redirect_to new_user_url }
      format.json { @users = User.all }
    end
  end

  # GET /
  def login
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  def overview
    @user = current_user_credential.user
  end

  # GET /users/new
  def new

    puts 'DOING THE CHECK!!!!!!!!'
    if User.exists?(current_user_credential.user) then
      puts 'user already exists'
      @user = current_user_credential.user
    else
      puts 'created new user'
      @user = User.new
    end
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    if request.format != "application/json" then
      @user.user_credential = current_user_credential
    end

    respond_to do |format|
      if @user.save
        format.html { redirect_to new_education_url, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created }
      else
        format.html { render :new }
        format.json { render json: {:errors => @user.errors}, status: :bad_request }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.jsonrequire "users_base_controller"
  
  def update
    #@admin = Admin.find(params[:id])
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to new_education_url, notice: 'User was successfully updated.' }
        format.json { render json: @user, status: :ok }
      else
        format.html { render :edit }
        format.json { render json: {:errors => @user.errors}, status: :bad_request }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
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
        params.permit(:first_name, :middle_name, :last_name, :dob, :phone, :email, :street_address, :city, :state, :country, :zipcode, :submitted, :travel_score, 
        :sport_score, :personal_projects_score, :voluntary_score, :achievements_score, :passion_score, :study_score, :work_score, :self_reflection_score)
      else
        params.require(:user).permit(:first_name, :middle_name, :last_name, :dob, :phone, :email, :street_address, :city, :state, :country, :zipcode, :submitted)
      end
    end
end