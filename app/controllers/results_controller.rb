
class ResultsController < ApplicationController
  require 'json'
  def show
    mbti_alphabets = Question.all.map do |question|
      question[:answer] == 'A' ? question[:A_alphabet] : question[:B_alphabet]
    end
    @mbti_string = mbti_alphabets.join

    puts "mbti_string: #{@mbti_string}"

    file_path = Rails.root.join('public', 'json','mbti_data.json')
    file = File.read(file_path)
    mbti_data = JSON.parse(file)

    @mbti_features = mbti_data[@mbti_string]
  end
end
