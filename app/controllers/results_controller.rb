class ResultsController < ApplicationController
  def show
    @mbti_alphabets = Question.all.map do |question|
      question[:answer] == "A" ? question[:A_alphabet] : question[:B_alphabet]
    end
  end
end
