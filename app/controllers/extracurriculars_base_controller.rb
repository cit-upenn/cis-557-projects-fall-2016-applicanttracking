class ExtracurricularsBaseController < ApplicationController

  # GET /extracurriculars
  # GET /extracurriculars.json
  def index
    respond_to do |format|
      format.html { redirect_to new_extracurricular_url }
      format.json { @extracurriculars = Extracurricular.all }
    end
  end

  # GET /extracurriculars/1
  # GET /extracurriculars/1.json
  def show
  end

  # GET /extracurriculars/new
  def new
    if Extracurricular.exists?(current_user_credential.extracurriculars.first) then
      @extracurricular = current_user_credential.extracurriculars.first
    else
      @extracurricular = Extracurricular.new
    end
  end

  # GET /extracurriculars/1/edit
  def edit
  end

  def user
    @extracurriculars = Extracurricular.where(user: params[:id])
    render :index
  end

  # POST /extracurriculars
  # POST /extracurriculars.json
  def create
    @extracurricular = Extracurricular.new(extracurricular_params)

    if request.format != "application/json" then
      @extracurricular.user = current_user_credential.user
    end

    respond_to do |format|
      if @extracurricular.save
        format.html { redirect_to new_award_url, notice: 'Extracurricular was successfully created.' }
        format.json { render :show, status: :created, location: @extracurricular }
      else
        format.html { render :new }
        format.json { render json: {:errors => @extracurricular.errors}, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /extracurriculars/1
  # PATCH/PUT /extracurriculars/1.json
  def update
    respond_to do |format|
      if @extracurricular.update(extracurricular_params)
        format.html { redirect_to new_award_url, notice: 'Extracurricular was successfully updated.' }
        format.json { render :show, status: :ok, location: @extracurricular }
      else
        format.html { render :edit }
        format.json { render json: {:errors => @extracurricular.errors}, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /extracurriculars/1
  # DELETE /extracurriculars/1.json
  def destroy
    @extracurricular.destroy
    respond_to do |format|
      format.html { redirect_to extracurriculars_url, notice: 'Extracurricular was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_extracurricular
      if Extracurricular.exists?(params[:id])
        @extracurricular = Extracurricular.find(params[:id])
      else
        render json: {:errors => "Extracurricular doesn't exist"}, status: :bad_request
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def extracurricular_params
      if request.format == 'application/json'
        params.permit(:start, :end_date, :organization, :current, :position, :description, :user_id)
      else
        params.require(:extracurricular).permit(:start, :end_date, :organization, :current, :position, :description, :user_id)
      end
    end
end
