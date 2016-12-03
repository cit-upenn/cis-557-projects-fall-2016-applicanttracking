json.extract! question, :id, :question_type, :prompt, :created_at, :updated_at
json.url question_url(question, format: :json)