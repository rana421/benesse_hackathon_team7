class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.string :question
      t.boolean :answer

      t.timestamps
    end
  end
end
