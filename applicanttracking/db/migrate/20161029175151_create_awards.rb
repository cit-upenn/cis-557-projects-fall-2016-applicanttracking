class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.string :name
      t.string :description
      t.date :date
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
