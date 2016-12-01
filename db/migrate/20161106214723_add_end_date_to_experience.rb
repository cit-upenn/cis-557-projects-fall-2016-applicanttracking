class AddEndDateToExperience < ActiveRecord::Migration
  def change
    add_column :experiences, :end_date, :date
  end
end
