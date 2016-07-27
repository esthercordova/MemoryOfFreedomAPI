class UserQuestionsController < ApplicationController
  before_action :set_user_question, only: [:show, :update, :destroy]

  # GET /user_questions
  # GET /user_questions.json
  def index
    @user_questions = UserQuestion.all

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

  private

    def set_user_question
      @user_question = UserQuestion.find(params[:id])
    end

    def user_question_params
      params.require(:user_question).permit(:user_id, :question_id, :status, :notes)
    end
end
