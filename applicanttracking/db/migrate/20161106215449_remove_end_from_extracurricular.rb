class RemoveEndFromExtracurricular < ActiveRecord::Migration
  def change
    remove_column :extracurriculars, :end, :date
  end
end
