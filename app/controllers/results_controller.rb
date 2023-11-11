class ResultsController < ApplicationController
  def show
    # すべての質問とその回答を取得
    @questions_with_answers = Question.all.map do |question|
      { id: question.id, answer: question.answer }
    end
  end
end
