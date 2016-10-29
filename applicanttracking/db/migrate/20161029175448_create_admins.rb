class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :api_auth_token
      t.string :email
      t.string :first_name
      t.string :middle_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end
