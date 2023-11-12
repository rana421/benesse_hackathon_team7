# app/controllers/questions_controller.rb
class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :update]

  def show
    # 現在の質問を表示
  end

  def update
    if @question.update(question_params)
      # 次の質問のIDを計算
      next_question_id = @question.id + 1
      if Question.exists?(next_question_id)
        redirect_to question_path(next_question_id)
      else
        # 質問がない場合は、結果ページなどにリダイレクト
        redirect_to results_path
      end
    else
      # エラー処理
      render :show
    end
  end

  def past
    @question = Question.find(params[:id])

    pre_question_id = @question.id - 1
    if Question.exists?(pre_question_id)
      redirect_to question_path(pre_question_id)
    else
      redirect_to results_path
    end
  end

  private
  def set_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:answer)
  end
end
