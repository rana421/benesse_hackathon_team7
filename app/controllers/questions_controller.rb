# app/controllers/questions_controller.rb
class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      # 回答が保存された後の処理（次の質問にリダイレクトするなど）
    else
      # エラー処理
    end
  end

  private

  def question_params
    params.require(:question).permit(:result)
  end
end
