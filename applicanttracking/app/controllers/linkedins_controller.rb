class LinkedinsController < ApplicationController
  before_action :authenticate_user_credential! 
  before_action :set_linkedin, only: [:show, :edit, :update, :destroy]

  # GET /linkedins
  # GET /linkedins.json
  def index
    @linkedins = Linkedin.all
  end

  # GET /linkedins/1
  # GET /linkedins/1.json
  def show
  end

  # GET /linkedins/new
  def new
    @linkedin = Linkedin.new
  end

  # GET /linkedins/1/edit
  def edit
  end

  # POST /linkedins
  # POST /linkedins.json
  def create
    @linkedin = Linkedin.new(linkedin_params)

    respond_to do |format|
      if @linkedin.save
        format.html { redirect_to @linkedin, notice: 'Linkedin was successfully created.' }
        format.json { render :show, status: :created, location: @linkedin }
      else
        format.html { render :new }
        format.json { render json: @linkedin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /linkedins/1
  # PATCH/PUT /linkedins/1.json
  def update
    respond_to do |format|
      if @linkedin.update(linkedin_params)
        format.html { redirect_to @linkedin, notice: 'Linkedin was successfully updated.' }
        format.json { render :show, status: :ok, location: @linkedin }
      else
        format.html { render :edit }
        format.json { render json: @linkedin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /linkedins/1
  # DELETE /linkedins/1.json
  def destroy
    @linkedin.destroy
    respond_to do |format|
      format.html { redirect_to linkedins_url, notice: 'Linkedin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_linkedin
      @linkedin = Linkedin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def linkedin_params
      if request.format == 'application/json'
        params.permit(:path, :username, :user_id)
      else
        params.require(:linkedin).permit(:path, :username, :user_id)
      end
    end
end
