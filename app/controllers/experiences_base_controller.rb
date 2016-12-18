class ExperiencesBaseController < ApplicationController

  # GET /experiences
  # GET /experiences.json
  def index
    respond_to do |format|
      format.html { redirect_to new_experience_url }
      format.json { @experiences = Experience.all }
    end
  end

  # GET /experiences/1
  # GET /experiences/1.json
  def show
  end

  # GET /experiences/new
  def new
    if Experience.exists?(current_user_credential.experiences.first) then
      @experience = current_user_credential.experiences.first
    else
      @experience = Experience.new
    end
  end

  # GET /experiences/1/edit
  def edit
  end

  def user
    @experience = Experience.where(user: params[:id])
    render :index
  end

  # POST /experiences
  # POST /experiences.json
  def create
    @experience = Experience.new(experience_params)

    if request.format != "application/json" then
      @experience.user = current_user_credential.user
    end

    respond_to do |format|
      if @experience.save
        format.html { redirect_to new_extracurricular_url, notice: 'Experience was successfully created.' }
        format.json { render :show, status: :created, location: @experience }
      else
        format.html { render :new }
        format.json { render json: {:errors => @experience.errors}, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /experiences/1
  # PATCH/PUT /experiences/1.json
  def update
    respond_to do |format|
      if @experience.update(experience_params)
        format.html { redirect_to new_extracurricular_url, notice: 'Experience was successfully updated.' }
        format.json { render :show, status: :ok, location: @experience }
      else
        format.html { render :edit }
        format.json { render json: {:errors => @experience.errors}, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /experiences/1
  # DELETE /experiences/1.json
  def destroy
    @experience.destroy
    respond_to do |format|
      format.html { redirect_to experiences_url, notice: 'Experience was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experience
      if Experience.exists?(params[:id])
        @experience = Experience.find(params[:id])
      else
        render json: {:errors => "Experience doesn't exist"}, status: :bad_request
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def experience_params
      if request.format == 'application/json'
        params.permit(:start, :end_date, :current, :title, :company, :description, :user_id)
      else
        params.require(:experience).permit(:start, :end_date, :current, :title, :company, :description, :user_id)
      end
    end
end
