class AnswersBaseController < ApplicationController

  # GET /answers
  # GET /answers.json
  def index
    respond_to do |format|
      format.html { redirect_to new_answer_url }
      format.json { @answers = Answer.all }
    end
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

  def user
    @answers = Answer.where(user: params[:id])
    render :index
  end

  def type
    @answers = Answer.where(data_type: params[:data_type])
    render :index
  end

  # GET /answers/new
  def new
    if Answer.exists?(current_user_credential.answers.first) then
      @answer = current_user_credential.answers.first
    else
      @answer = Answer.new
    end
  end

  # GET /answers/1/edit
  def edit
  end

  # POST /answers
  # POST /answers.json
  def create
    @answer = Answer.new(answer_params)

    if request.format != "application/json" then
      if params[:answer] then
        @answer = Answer.new({"video" =>  params[:answer][:video]})
      end
      @answer.user = current_user_credential.user
      @answer.question = Question.first
      @answer.data_type = "video"
    end

    respond_to do |format|
      if @answer.save
        format.html { redirect_to overview_users_url, notice: 'Answer was successfully created.' }
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
        format.html { redirect_to overview_users_url, notice: 'Answer was successfully updated.' }
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
        params.permit(:text_answer, :data_type, :question_id, :user_id, :video, :answer)
      end
    end
end
