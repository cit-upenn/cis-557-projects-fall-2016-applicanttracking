class CreateLinkedins < ActiveRecord::Migration
  def change
    create_table :linkedins do |t|
      t.string :path
      t.string :username
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
