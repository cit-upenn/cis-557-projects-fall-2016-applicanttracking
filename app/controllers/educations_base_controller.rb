class EducationsBaseController < ApplicationController
 
  # GET /educations
  # GET /educations.json
  def index
    respond_to do |format|
      format.html { redirect_to new_education_url }
      format.json { @educations = Education.all }
    end
  end

  # GET /educations/1
  # GET /educations/1.json
  def show
  end

  # GET /educations/new
  def new
    if Education.exists?(current_user_credential.educations.first) then
      @education = current_user_credential.educations.first
    else
      @education = Education.new
    end
  end

  # GET /educations/1/edit
  def edit
  end

  def user
    @educations = Education.where(user: params[:id])
    render :index
  end

  # POST /educations
  # POST /educations.json
  def create
    @education = Education.new(education_params)

    if request.format != "application/json" then
      @education.user = current_user_credential.user
    end

    respond_to do |format|
      if @education.save
        format.html { redirect_to new_experience_url, notice: 'Education was successfully created.' }
        format.json { render :show, status: :created, location: @education }
      else
        format.html { render :new }
        format.json { render json: {:errors => @education.errors}, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /educations/1
  # PATCH/PUT /educations/1.json
  def update
    respond_to do |format|
      if @education.update(education_params)
        format.html { redirect_to new_experience_url, notice: 'Education was successfully updated.' }
        format.json { render :show, status: :ok, location: @education }
      else
        format.html { render :edit }
        format.json { render json: {:errors => @education.errors}, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /educations/1
  # DELETE /educations/1.json
  def destroy
    @education.destroy
    respond_to do |format|
      format.html { redirect_to educations_url, notice: 'Education was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_education
      if Education.exists?(params[:id])
        @education = Education.find(params[:id])
      else
        render json: {:errors => "Education doesn't exist"}, status: :bad_request
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def education_params
      if request.format == 'application/json'
        params.permit(:start, :end_date, :current, :degree, :school, :gpa, :major, :minor, :user_id)
      else
        params.require(:education).permit(:start, :end_date, :current, :degree, :school, :gpa, :major, :minor, :user_id)
      end
    end
end
