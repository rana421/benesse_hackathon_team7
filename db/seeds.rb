# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Question.create([
#   { question: "科学や技術に興味はありますか？", answer: true },
#   { question: "人々を助けることに喜びを感じますか？", answer: true },
#   { question: "アートやデザインに魅力を感じますか？", answer: true },
#   { question: "計算や数学的な問題解決が得意ですか？", answer: true }
#   { question: "スポーツやアクティブな活動が好きですか？", answer: true }
#   { question: "新しいことを学ぶのが好きですか？", answer: true }
#   { question: "チームで働くことを好みますか？", answer: true }
#   { question: "公演やプレゼンテーションをするのが得意ですか？", answer: true }
#   { question: "細かい作業を丁寧にこなせますか？", answer: true }
#   { question: "旅行や新しい場所を探検するのが好きですか？", answer: true }
# ])


Question.create(question: "科学や技術に興味はありますか？", answer: true)
