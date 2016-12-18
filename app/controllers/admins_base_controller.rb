class AdminsBaseController < ApplicationController 
 
  # GET /admins
  # GET /admins.json
  def index
    redirect_to action: "show", id: current_admin_credential.id
  end
  
  def user
    @user = User.find(params[:id])
    @awards = Award.where(:user_id => params[:id])
    @educations = Education.where(:user_id => params[:id])
    @answers = Answer.where(:user_id => params[:id])
    @customs = Custom.where(:user_id => params[:id])
    @experiences = Experience.where(:user_id => params[:id])
    @extracurriculars = Extracurricular.where(:user_id => params[:id])
    @customs = Custom.where(:user_id => params[:id])
  end
  
  def update
    @admin = current_admin_credential
    respond_to do |format|
      if @admin.update(admin_params)
        format.html { redirect_to admins_path, notice: 'Admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin}
      else
        format.html { redirect_to admins_path }
        format.json { render json: @admin.errors, status: :unprocessable_entity }
      end
    end
  end
  
  class User_score
    attr_accessor :score, :actual_user
  end


  # GET /admins/1
  # GET /admins/1.json
  def show
     #puts "called admin show"
     @users = User.all
     users_array = []
     User.all.each do |user|
       u = User_score.new
       scores = Array[user.travel_score,user.personal_projects_score,user.voluntary_score, user.achievements_score, user.passion_score,user.study_score, user.work_score, user.self_reflection_score] 
       metrics = Array[@admin.travel_metric,@admin.personal_projects_metric,@admin.voluntary_metric, @admin.achievements_metric, @admin.passion_metric, @admin.study_metric, @admin.work_metric, @admin.self_reflection_metric]
       u.score = 0;
       scores.zip(metrics).each do |s, m|
         if s != NIL && m != NIL
           u.score += s*m
         end
      end
       u.actual_user = user
       users_array.push(u)
     end
     users_array.sort_by! {|user| user.score}
     users_array.each do |sorted_user|
     end
     @sorted_users = users_array
  end

  # GET /admins/new
  # def new
  #   puts "called admin new"
  #   @admin = Admin.new
  # end

  # # GET /admins/1/edit
  # def edit
  #   puts "called admin edit"
  # end

  # POST /admins
  # POST /admins.json
  # def create
  #   puts "called admin create"
  #   @admin = Admin.new(admin_params)
  #
  #   respond_to do |format|
  #     if @admin.save
  #       format.html { redirect_to @admin, notice: 'Admin was successfully created.' }
  #       format.json { render :show, status: :created, location: @admin }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @admin.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # PATCH/PUT /admins/1
  # PATCH/PUT /admins/1.json
  # def update
  #   puts "called admin update"
  #   respond_to do |format|
  #     if @admin.update(admin_params)
  #       format.html { redirect_to @admin, notice: 'Admin was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @admin }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @admin.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /admins/1
  # # DELETE /admins/1.json
  # def destroy
  #   puts "called admin destroyed"
  #   @admin.destroy
  #   respond_to do |format|
  #     format.html { redirect_to admins_url, notice: 'Admin was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin
      #puts "called set_admin"
      @admin = current_admin_credential
    end
    
    def admin_params
      if request.format == 'application/json'
        puts("admin_params request.format == 'application/json")
        params.permit(:api_auth_token, :email, :first_name, :middle_name, :last_name,
        :travel_metric, :sport_metric, :personal_projects_metric, :voluntary_metric, :achievements_metric, :passion_metric, :study_metric, :work_metric, :self_reflection_metric)
      else
        puts("NOT admin_params request.format == 'application/json")
        params.require(:admin).permit(:api_auth_token, :email, :first_name, :middle_name, :last_name,
                :travel_metric, :sport_metric, :personal_projects_metric, :voluntary_metric, :achievements_metric, :passion_metric, :study_metric, :work_metric, :self_reflection_metric)
      end
    end
    
    
    # TO DO: DELETE Never trust parameters from the scary internet, only allow the white list through.
    # def admin_params
    #   if request.format == 'application/json'
    #     params.permit(:api_auth_token, :email, :first_name, :middle_name, :last_name,
    #     :travel_metric, :sport_metric, :personal_projects_metric, :voluntary_metric, :achievements_metric, :passion_metric, :study_metric, :work_metric, :self_reflection_metric)
    #   else
    #     params.require(:admin).permit(:api_auth_token, :email, :first_name, :middle_name, :last_name,
    #             :travel_metric, :sport_metric, :personal_projects_metric, :voluntary_metric, :achievements_metric, :passion_metric, :study_metric, :work_metric, :self_reflection_metric)
    #   end
    # end
end
