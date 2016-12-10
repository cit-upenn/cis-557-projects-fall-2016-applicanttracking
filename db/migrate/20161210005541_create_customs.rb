class CreateCustoms < ActiveRecord::Migration
  def change
    create_table :customs do |t|
      t.references :user, index: true, foreign_key: true
      t.string :data
      t.string :type

      t.timestamps null: false
    end
  end
end
