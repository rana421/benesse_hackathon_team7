# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Question.create([
  {question: "初対面の人と気まずい状況の時、あなたはどうする？？", choiceA: "先に自分から声をかける", choiceB: "沈黙したままじっといる", answer: nil, A_alphabet: "E", B_alphabet: "I"},
  {question: "もしゾンビが世界を支配したらあなたはどうする？？", choiceA: "現実的にそんなことありえない", choiceB: "マジで...どうしよう....じゃあ....（想像で頭がいっぱい）", answer: nil, A_alphabet: "S", B_alphabet: "N"},
  {question: "問題が生じたらあなたはどうする？？", choiceA: "理解が出来なかったら共感できない", choiceB: "理解は出来ないけど、一旦共感する", answer: nil, A_alphabet: "T", B_alphabet: "F"},
  {question: "課題が急遽発生したらあなたはどうする？？", choiceA: "一旦計画を立ててから、骨組みを整える", choiceB: "一旦始めてみて、骨組みを整える", answer: nil, A_alphabet: "J", B_alphabet: "P"},
])

# Question.delete_all
# ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name = 'questions';")
