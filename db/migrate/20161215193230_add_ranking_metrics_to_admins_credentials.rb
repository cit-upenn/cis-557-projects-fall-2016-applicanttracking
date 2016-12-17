class AddRankingMetricsToAdminsCredentials < ActiveRecord::Migration
  def change
    add_column :admin_credentials, :travel_metric, :float, default: 0.23
    add_column :admin_credentials, :sport_metric, :float, default: 0.03
    add_column :admin_credentials, :personal_projects_metric, :float, default: 0.23
    add_column :admin_credentials, :voluntary_metric, :float, default: 0.08
    add_column :admin_credentials, :achievements_metric, :float, default: 0.06
    add_column :admin_credentials, :passion_metric, :float, default: 0.06
    add_column :admin_credentials, :study_metric, :float, default: 0.11
    add_column :admin_credentials, :work_metric, :float, default: 0.11
    add_column :admin_credentials, :self_reflection_metric, :float, default: 0.11
  end
end
