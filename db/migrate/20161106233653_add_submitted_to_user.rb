class AddSubmittedToUser < ActiveRecord::Migration
  def change
    add_column :users, :submitted, :boolean
  end
end
