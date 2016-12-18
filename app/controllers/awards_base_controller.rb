class AwardsBaseController < ApplicationController
 

  # GET /awards
  # GET /awards.json
  def index
    respond_to do |format|
      format.html { redirect_to new_experience_url }
      format.json { @awards = Award.all }
    end
  end

  # GET /awards/1
  # GET /awards/1.json
  def show
  end

  # GET /awards/new
  def new
    if Award.exists?(current_user_credential.awards.first) then
      @award = current_user_credential.awards.first
    else
      @award = Award.new
    end
  end

  # GET /awards/1/edit
  def edit
  end

  def user
    @awards = Award.where(user: params[:id])
    render :index
  end

  # POST /awards
  # POST /awards.json
  def create
    @award = Award.new(award_params)

    if request.format != "application/json" then
      @award.user = current_user_credential.user
    end

    respond_to do |format|
      if @award.save
        format.html { redirect_to new_answer_url, notice: 'Award was successfully created.' }
        format.json { render :show, status: :created, location: @award }
      else
        format.html { render :new }
        format.json { render json: {:errors => @award.errors}, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /awards/1
  # PATCH/PUT /awards/1.json
  def update
    respond_to do |format|
      if @award.update(award_params)
        format.html { redirect_to new_answer_url, notice: 'Award was successfully updated.' }
        format.json { render :show, status: :ok, location: @award }
      else
        format.html { render :edit }
        format.json { render json: {:errors => @award.errors}, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /awards/1
  # DELETE /awards/1.json
  def destroy
    @award.destroy
    respond_to do |format|
      format.html { redirect_to awards_url, notice: 'Award was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_award
      if Award.exists?(params[:id])
        @award = Award.find(params[:id])
      else
        render json: {:errors => "Award doesn't exist"}, status: :bad_request
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def award_params
      if request.format == 'application/json'
        params.permit(:name, :description, :date, :user_id)
      else
        params.require(:award).permit(:name, :description, :date, :user_id)
      end
    end
end
