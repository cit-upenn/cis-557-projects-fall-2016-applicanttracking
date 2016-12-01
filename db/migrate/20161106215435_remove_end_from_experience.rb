class RemoveEndFromExperience < ActiveRecord::Migration
  def change
    remove_column :experiences, :end, :date
  end
end
