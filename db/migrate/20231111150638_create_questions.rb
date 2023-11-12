class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :choiceA
      t.string :choiceB
      t.string :answer
      t.string :A_alphabet
      t.string :B_alphabet

      t.timestamps
    end
  end
end
