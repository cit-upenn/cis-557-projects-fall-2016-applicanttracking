class AddUserCredentialToUser < ActiveRecord::Migration
  def change
    add_reference :users, :user_credential, index: true, foreign_key: true
  end
end
