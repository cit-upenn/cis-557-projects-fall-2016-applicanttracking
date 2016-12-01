class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question_type
      t.string :prompt

      t.timestamps null: false
    end
  end
end
