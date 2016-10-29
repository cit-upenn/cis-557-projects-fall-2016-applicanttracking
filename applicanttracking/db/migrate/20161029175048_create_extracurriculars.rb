class CreateExtracurriculars < ActiveRecord::Migration
  def change
    create_table :extracurriculars do |t|
      t.date :start
      t.date :end
      t.string :organization
      t.boolean :current
      t.string :position
      t.string :description
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
