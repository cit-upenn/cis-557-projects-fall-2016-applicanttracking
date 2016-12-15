class AddRankingMetricsToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :travel_metric, :float
    add_column :admins, :sport_metric, :float
    add_column :admins, :personal_projects_metric, :float
    add_column :admins, :voluntary_metric, :float
    add_column :admins, :achievements_metric, :float
    add_column :admins, :passion_metric, :float
    add_column :admins, :study_metric, :float
    add_column :admins, :work_metric, :float
    add_column :admins, :self_reflection_metric, :float
  end
end
