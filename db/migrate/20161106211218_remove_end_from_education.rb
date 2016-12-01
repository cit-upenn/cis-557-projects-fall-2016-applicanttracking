class RemoveEndFromEducation < ActiveRecord::Migration
  def change
    remove_column :educations, :end, :date
  end
end
