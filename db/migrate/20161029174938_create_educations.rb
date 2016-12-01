class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.date :start
      t.date :end
      t.boolean :current
      t.string :degree
      t.string :school
      t.float :gpa
      t.string :major
      t.string :minor
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
