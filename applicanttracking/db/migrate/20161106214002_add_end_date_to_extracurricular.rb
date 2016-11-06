class AddEndDateToExtracurricular < ActiveRecord::Migration
  def change
    add_column :extracurriculars, :end_date, :date
  end
end
