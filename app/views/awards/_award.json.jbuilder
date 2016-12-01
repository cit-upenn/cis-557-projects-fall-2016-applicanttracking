json.extract! award, :id, :name, :description, :date, :user_id, :created_at, :updated_at
json.url award_url(award, format: :json)