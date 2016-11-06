class AddEndDateToEducation < ActiveRecord::Migration
  def change
    add_column :educations, :end_date, :date
  end
end
