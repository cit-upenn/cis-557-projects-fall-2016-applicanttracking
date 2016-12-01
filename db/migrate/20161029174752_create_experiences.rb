class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.date :start
      t.date :end
      t.boolean :current
      t.string :title
      t.string :company
      t.string :description
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
