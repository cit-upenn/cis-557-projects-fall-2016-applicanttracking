class AdminsBaseController < ApplicationController 
 
  # GET /admins
  # GET /admins.json
  def index
    puts "called admin index"

    #redirect_to action: "show", id: current_admin_credential.id
    @admin_credential = current_admin_credential
    @users = User.all
    #metrics = {:travel=> 0.23, :sport=> 0.03, :personal_projects => 0.23, :voluntary=> 2.5, :achievements => 0.06, :passion => 0.06, :study => 0.11, :work => 0.11, :self_reflection => 0.11}
    users_array = []
    User.all.each do |user|
      u = User_score.new
      u.score = (user.travel_score * @admin_credential.travel_metric) + (user.personal_projects_score * @admin_credential.personal_projects_metric) 
      + (user.voluntary_score * @admin_credential.voluntary_metric) + (user.achievements_score * @admin_credential.achievements_metric) 
      + (user.passion_score * @admin_credential.passion_metric) + (user.study_score * @admin_credential.study_metric) 
      + (user.work_score * @admin_credential.work_metric)+ (user.self_reflection_score * @admin_credential.self_reflection_metric)
      u.actual_user = user
      users_array.push(u)
    end
  
    users_array.sort_by! {|user| user.score}
    puts"starting to print id, first_name, and score"
    users_array.each do |sorted_user|
      puts "id: #{sorted_user.actual_user.id}, name: #{sorted_user.actual_user.first_name}, #{sorted_user.score}"
    end
    @sorted_users = users_array
     
  end
  
  def user
    puts "admin_base_controller user def is called"
    @user = User.find(params[:id])
  end
  
  class User_score
    attr_accessor :score, :actual_user
  end

  # GET /admins/1
  # GET /admins/1.json
  def show
     puts "called admin show"
     @admin_credential = current_admin_credential
     @users = User.all
     #metrics = {:travel=> 0.23, :sport=> 0.03, :personal_projects => 0.23, :voluntary=> 2.5, :achievements => 0.06, :passion => 0.06, :study => 0.11, :work => 0.11, :self_reflection => 0.11}
     users_array = []
     User.all.each do |user|
       u = User_score.new
       u.score = (user.travel_score * @admin_credential.travel_metric) + (user.personal_projects_score * @admin_credential.personal_projects_metric) 
       + (user.voluntary_score * @admin_credential.voluntary_metric) + (user.achievements_score * @admin_credential.achievements_metric) 
       + (user.passion_score * @admin_credential.passion_metric) + (user.study_score * @admin_credential.study_metric) 
       + (user.work_score * @admin_credential.work_metric)+ (user.self_reflection_score * @admin_credential.self_reflection_metric)
       u.actual_user = user
       users_array.push(u)
     end
   
     users_array.sort_by! {|user| user.score}
     puts"starting to print id, first_name, and score"
     users_array.each do |sorted_user|
       puts "id: #{sorted_user.actual_user.id}, name: #{sorted_user.actual_user.first_name}, #{sorted_user.score}"
     end
     @sorted_users = users_array

  end

  # GET /admins/new
  def new
    puts "called admin new"
    @admin = Admin.new
  end

  # GET /admins/1/edit
  def edit
    puts "called admin edit"
  end

  # POST /admins
  # POST /admins.json
  def create
    puts "called admin create"
    @admin = Admin.new(admin_params)

    respond_to do |format|
      if @admin.save
        format.html { redirect_to @admin, notice: 'Admin was successfully created.' }
        format.json { render :show, status: :created, location: @admin }
      else
        format.html { render :new }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admins/1
  # PATCH/PUT /admins/1.json
  def update
    puts "called admin update"
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to @admin, notice: 'Admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin }
      else
        format.html { render :edit }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admins/1
  # DELETE /admins/1.json
  def destroy
    puts "called admin destroyed"
    @admin.destroy
    respond_to do |format|
      format.html { redirect_to admins_url, notice: 'Admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      puts "called set_admin"
      @admin = Admin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_params
      if request.format == 'application/json'
        params.permit(:api_auth_token, :email, :first_name, :middle_name, :last_name,
        :travel_metric, :sport_metric, :personal_projects_metric, :voluntary_metric, :achievements_metric, :passion_metric, :study_metric, :work_metric, :self_reflection_metric)
      else
        params.require(:admin).permit(:api_auth_token, :email, :first_name, :middle_name, :last_name,
                :travel_metric, :sport_metric, :personal_projects_metric, :voluntary_metric, :achievements_metric, :passion_metric, :study_metric, :work_metric, :self_reflection_metric)
      end
    end
end
