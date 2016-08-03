class UserQuestionsController < OpenReadController
  before_action :set_user_question, only: [:show, :update, :destroy]

  # GET /user_questions
  # GET /user_questions.json
  def index
    @user_questions = UserQuestion.where(user: current_user)

    # if params[:status] == "easy"
    #   @user_questions = @user_questions.where(status: "easy")
    # elsif  params[:status] == "medium"
    #   @user_questions = @user_questions.where(status: "medium")
    # else
    #   @user_questions = @user_questions.where(status: "hard")
    # end


    render json: @user_questions
  end

  # GET /user_questions/1
  # GET /user_questions/1.json
  def show
    render json: @user_question
  end

  # POST /user_questions
  # POST /user_questions.json
  def create
    @user_question = UserQuestion.new(user_question_params)

    if @user_question.save
      render json: @user_question, status: :created, location: @user_question
    else
      render json: @user_question.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_questions/1
  # PATCH/PUT /user_questions/1.json
  def update
    @user_question = UserQuestion.find(params[:id])

    if @user_question.update(user_question_params)
      head :no_content
    else
      render json: @user_question.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_questions/1
  # DELETE /user_questions/1.json
  def destroy
    @user_question.destroy

    head :no_content
  end

  def findQuestionId
    @row = UserQuestion.select { |question| question if question.user_id.to_s == params[:user_id] and question.question_id.to_s == params[:question_id] }
    render json: @row
  end

  private



    def set_user_question
      @user_question = UserQuestion.where(user: current_user).find(params[:id])
    end

    def user_question_params
      params.require(:user_question).permit(:user_id, :question_id, :status, :notes)
    end
end
