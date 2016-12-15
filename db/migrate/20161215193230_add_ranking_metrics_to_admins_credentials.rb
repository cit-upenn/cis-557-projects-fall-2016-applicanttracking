class AddRankingMetricsToAdminsCredentials < ActiveRecord::Migration
  def change
    add_column :admins_credentials, :travel_score, :float
  end
end
