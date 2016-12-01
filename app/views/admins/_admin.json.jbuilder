json.extract! admin, :id, :api_auth_token, :email, :first_name, :middle_name, :last_name, :created_at, :updated_at
json.url admin_url(admin, format: :json)