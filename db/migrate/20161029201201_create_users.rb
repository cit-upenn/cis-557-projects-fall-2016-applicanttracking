class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :dob
      t.bigint :phone
      t.string :email
      t.string :street_address
      t.string :city
      t.string :state
      t.string :country
      t.string :zipcode

      t.timestamps null: false
    end
  end
end
