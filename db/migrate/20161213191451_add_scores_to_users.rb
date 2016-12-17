class AddScoresToUsers < ActiveRecord::Migration
  def change
    add_column :users, :travel_score, :flaot, default: 0
    add_column :users, :sport_score, :float, default: 0
    add_column :users, :personal_projects_score,:float, default: 0
    add_column :users, :voluntary_score, :float, default: 0
    add_column :users, :achievements_score, :float, default: 0
    add_column :users, :passion_score, :float, default: 0
    add_column :users, :study_score, :float, default: 0
    add_column :users, :work_score, :float, default: 0
    add_column :users, :self_reflection_score, :float, default: 0
  end
end
