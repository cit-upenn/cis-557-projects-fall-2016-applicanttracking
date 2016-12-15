class AddScoresToUsers < ActiveRecord::Migration
  def change
    add_column :users, :travel_score, :flaot
    add_column :users, :sport_score, :float
    add_column :users, :personal_projects_score, :float
    add_column :users, :voluntary_score, :float
    add_column :users, :achievements_score, :float
    add_column :users, :passion_score, :float
    add_column :users, :study_score, :float
    add_column :users, :work_score, :float
    add_column :users, :self_reflection_score, :float
  end
end
