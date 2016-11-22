class GithubsController < ApplicationController
  #before_action :authenticate_user_credential!
  before_action :set_github, only: [:show, :edit, :update, :destroy]

  # GET /githubs
  # GET /githubs.json
  def index
    @githubs = Github.all
  end

  # GET /githubs/1
  # GET /githubs/1.json
  def show
  end

  # GET /githubs/new
  def new
    @github = Github.new
  end

  # GET /githubs/1/edit
  def edit
  end

  # POST /githubs
  # POST /githubs.json
  def create
    @github = Github.new(github_params)

    respond_to do |format|
      if @github.save
        format.html { redirect_to @github, notice: 'Github was successfully created.' }
        format.json { render :show, status: :created, location: @github }
      else
        format.html { render :new }
        format.json { render json: @github.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /githubs/1
  # PATCH/PUT /githubs/1.json
  def update
    respond_to do |format|
      if @github.update(github_params)
        format.html { redirect_to @github, notice: 'Github was successfully updated.' }
        format.json { render :show, status: :ok, location: @github }
      else
        format.html { render :edit }
        format.json { render json: @github.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /githubs/1
  # DELETE /githubs/1.json
  def destroy
    @github.destroy
    respond_to do |format|
      format.html { redirect_to githubs_url, notice: 'Github was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_github
      @github = Github.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def github_params
      if request.format == 'application/json'
        params.permit(:path, :username, :user_id)
      else
        params.require(:github).permit(:path, :username, :user_id)
      end
    end
end
