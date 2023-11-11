# app/controllers/results_controller.rb
class ResultsController < ApplicationController
  def show
    # ここに回答に基づく結果のロジックを実装します。
    # 例えば、すべての回答が true か false かに基づいて結果を決定するなど。
    @result = calculate_result(params[:answers])
  end

  private

  def calculate_result(answers)
    if answers.all? { |answer| answer == "true" }
      "結果A"
    elsif answers.none? { |answer| answer == "true" }
      "結果B"
    else
      "結果C"
    end
  end
end
