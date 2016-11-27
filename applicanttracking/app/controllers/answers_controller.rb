class AnswersController < ApplicationController
  #before_action :authenticate_user_credential!
  before_action :set_answer, only: [:show, :edit, :update, :destroy, :upload]
  skip_before_filter :verify_authenticity_token

  # GET /answers
  # GET /answers.json
  def index
    @answers = Answer.all
  end

  # POST /upload
  def upload
    if @answer.update({"video" => params["video"]})
      render json: @answer, status: :ok
    else
      render json: @answer.errors, status: :unprocessable_entity
    end
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
  end

  # GET /answers/new
  def new
    @answer = Answer.new
  end

  # GET /answers/1/edit
  def edit
  end

  # POST /answers
  # POST /answers.json
  def create
    @answer = Answer.new(answer_params)

    respond_to do |format|
      if @answer.save
        format.html { redirect_to @answer, notice: 'Answer was successfully created.' }
        format.json { render :show, status: :created, location: @answer }
      else
        format.html { render :new }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answers/1
  # PATCH/PUT /answers/1.json
  def update
    respond_to do |format|
      if @answer.update(answer_params)
        format.html { redirect_to @answer, notice: 'Answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @answer }
      else
        format.html { render :edit }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @answer.destroy
    respond_to do |format|
      format.html { redirect_to answers_url, notice: 'Answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      if Answer.exists?(params[:id])
        @answer = Answer.find(params[:id])
      else
        render json: {:errors => "Answer doesn't exist"}, status: :bad_request
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      if request.format == 'application/json'
        params.permit(:text_answer, :data_type, :question_id, :user_id, :video)
      else
        params.require(:answer).permit(:text_answer, :data_type, :question_id, :user_id, :video)
      end
    end
end
