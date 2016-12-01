class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :text_answer
      t.string :data_type
      t.binary :video_answer
      t.references :question, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
