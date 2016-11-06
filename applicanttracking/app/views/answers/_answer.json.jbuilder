json.extract! answer, :id, :text_answer, :data_type, :video_answer, :question_id, :user_id, :created_at, :updated_at
json.url answer_url(answer, format: :json)